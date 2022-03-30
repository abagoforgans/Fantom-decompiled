contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address stor11;
address stor12;
address stor13;

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

function balance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor13)
    staticcall stor13.flashFee(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    call address(arg2).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor13, (2 * ext_call.return_data[0]) + arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor13)
    call stor13.flashLoan(address rg1, address rg2, uint256 rg3, bytes rg4) with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg1, 128, 224, bool(arg8), address(arg2), address(arg3), address(arg4), address(arg5), address(arg6), address(arg7)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_4c9977f4(?) payable {
    require calldata.size - 4 >= 32
    mem[100] = stor5
    mem[132] = -1
    require ext_code.size(stor4)
    call stor4.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor5, -1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 128] = stor4
    mem[ceil32(return_data.size) + 160] = stor3
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 1
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp
    require ext_code.size(stor5)
    call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg1, 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    require return_data.size >= mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if stor13 != msg.sender:
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
        if stor5 == address(cd[(arg5 + 164)]):
            mem[320] = 2
            mem[352] = address(cd[(arg5 + 68)])
            mem[384] = address(cd[(arg5 + 100)])
            mem[420] = stor5
            mem[452] = -1
            require ext_code.size(address(cd[(arg5 + 68)]))
            call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor5, -1
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
            _6077 = mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 447 < ceil32(return_data.size) + return_data.size + 416
            _6120 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416] <= test266151307()
            require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 448 <= test266151307()
            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 448
            mem[(2 * ceil32(return_data.size)) + 416] = _6120
            require return_data.size >= _6077 + (32 * _6120) + 32
            mem[(2 * ceil32(return_data.size)) + 448 len 32 * _6120] = mem[ceil32(return_data.size) + _6077 + 448 len 32 * _6120]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 100)]))
            staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7292 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _7335 = mem[_7292]
            if mem[_7292] <= 0:
                revert with 0, 'Contract has not recived Token B'
            if stor5 == address(cd[(arg5 + 196)]):
                _7384 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_7384]
                mem[_7384 + 32] = address(cd[(arg5 + 100)])
                require 1 < mem[_7384]
                mem[_7384 + 64] = address(cd[(arg5 + 132)])
                mem[_7384 + 100] = stor5
                mem[_7384 + 132] = -1
                require ext_code.size(address(cd[(arg5 + 100)]))
                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor5, -1
                mem[_7384 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _7384 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[_7384 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_7384 + ceil32(return_data.size) + 100] = _7335
                mem[_7384 + ceil32(return_data.size) + 132] = 1
                mem[_7384 + ceil32(return_data.size) + 164] = 160
                mem[_7384 + ceil32(return_data.size) + 260] = mem[_7384]
                idx = 0
                s = _7384 + ceil32(return_data.size) + 292
                t = _7384 + 32
                while idx < mem[_7384]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_7384 + ceil32(return_data.size) + 196] = this.address
                mem[_7384 + ceil32(return_data.size) + 228] = block.timestamp + 1
                require ext_code.size(address(cd[(arg5 + 196)]))
                call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _7335, 1, 160, address(this.address), block.timestamp + 1, mem[_7384 + ceil32(return_data.size) + 260 len (32 * mem[_7384]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_7384 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _7384 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _8101 = mem[_7384 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7335) >> 32
                require mem[_7384 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7335) >> 32 <= test266151307()
                require _7384 + ceil32(return_data.size) + mem[_7384 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7335) >> 32 + 127 < _7384 + ceil32(return_data.size) + return_data.size + 96
                _8107 = mem[_7384 + ceil32(return_data.size) + mem[_7384 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7335) >> 32 + 96]
                require mem[_7384 + ceil32(return_data.size) + mem[_7384 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7335) >> 32 + 96] <= test266151307()
                require (32 * mem[_7384 + ceil32(return_data.size) + mem[_7384 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7335) >> 32 + 96]) + 32 >= 0 and _7384 + (2 * ceil32(return_data.size)) + (32 * mem[_7384 + ceil32(return_data.size) + mem[_7384 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7335) >> 32 + 96]) + 128 <= test266151307()
                mem[64] = _7384 + (2 * ceil32(return_data.size)) + (32 * mem[_7384 + ceil32(return_data.size) + mem[_7384 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7335) >> 32 + 96]) + 128
                mem[_7384 + (2 * ceil32(return_data.size)) + 96] = _8107
                require return_data.size >= _8101 + (32 * _8107) + 32
                mem[_7384 + (2 * ceil32(return_data.size)) + 128 len 32 * _8107] = mem[_7384 + ceil32(return_data.size) + _8101 + 128 len 32 * _8107]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 132)]))
                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8191 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_8191] <= 0:
                    revert with 0, 'Contract has not recived Token C'
            else:
                if stor6 != address(cd[(arg5 + 196)]):
                    if stor7 == address(cd[(arg5 + 196)]):
                        mem[mem[64] + 4] = stor7
                        mem[mem[64] + 36] = -1
                        require ext_code.size(address(cd[(arg5 + 100)]))
                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args stor7, -1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7540 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7540] == bool(mem[_7540])
                        if stor1 == address(cd[(arg5 + 100)]):
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = _7335
                            mem[mem[64] + 100] = 1
                            require ext_code.size(stor11)
                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args 1, 0, _7335, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[(arg5 + 132)]))
                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7714 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7714] <= 0:
                                revert with 0, 'Contract has not recived Token C'
                        else:
                            if stor2 != address(cd[(arg5 + 100)]):
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = _7335
                                mem[mem[64] + 100] = 1
                                require ext_code.size(stor11)
                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, _7335, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[(arg5 + 132)]))
                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7713 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7713] <= 0:
                                    revert with 0, 'Contract has not recived Token C'
                            else:
                                mem[mem[64] + 36] = 1
                                mem[mem[64] + 68] = _7335
                                mem[mem[64] + 100] = 1
                                require ext_code.size(stor11)
                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args 0, 1, _7335, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[(arg5 + 132)]))
                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7736 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7736] <= 0:
                                    revert with 0, 'Contract has not recived Token C'
                    else:
                        if stor8 != address(cd[(arg5 + 196)]):
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[(arg5 + 132)]))
                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7545 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7545] <= 0:
                                revert with 0, 'Contract has not recived Token C'
                        else:
                            mem[mem[64] + 4] = stor8
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(cd[(arg5 + 100)]))
                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args stor8, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7546 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7546] == bool(mem[_7546])
                            if stor1 == address(cd[(arg5 + 100)]):
                                if stor1 == address(cd[(arg5 + 132)]):
                                    mem[mem[64] + 36] = 1
                                    mem[mem[64] + 68] = _7335
                                    mem[mem[64] + 100] = 1
                                    require ext_code.size(stor12)
                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args 1, 1, _7335, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7778 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7778] <= 0:
                                        revert with 0, 'Contract has not recived Token C'
                                else:
                                    if stor2 == address(cd[(arg5 + 132)]):
                                        mem[mem[64] + 36] = 2
                                        mem[mem[64] + 68] = _7335
                                        mem[mem[64] + 100] = 1
                                        require ext_code.size(stor12)
                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining wei
                                            args 1, 2, _7335, 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7797 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_7797] <= 0:
                                            revert with 0, 'Contract has not recived Token C'
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = _7335
                                        mem[mem[64] + 100] = 1
                                        require ext_code.size(stor12)
                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining wei
                                            args 1, 0, _7335, 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if stor3 != address(cd[(arg5 + 132)]):
                                            _7796 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_7796] <= 0:
                                                revert with 0, 'Contract has not recived Token C'
                                        else:
                                            _7817 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_7817] <= 0:
                                                revert with 0, 'Contract has not recived Token C'
                            else:
                                if stor2 == address(cd[(arg5 + 100)]):
                                    if stor1 == address(cd[(arg5 + 132)]):
                                        mem[mem[64] + 36] = 1
                                        mem[mem[64] + 68] = _7335
                                        mem[mem[64] + 100] = 1
                                        require ext_code.size(stor12)
                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining wei
                                            args 2, 1, _7335, 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7795 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_7795] <= 0:
                                            revert with 0, 'Contract has not recived Token C'
                                    else:
                                        if stor2 == address(cd[(arg5 + 132)]):
                                            mem[mem[64] + 36] = 2
                                            mem[mem[64] + 68] = _7335
                                            mem[mem[64] + 100] = 1
                                            require ext_code.size(stor12)
                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 2, 2, _7335, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7816 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_7816] <= 0:
                                                revert with 0, 'Contract has not recived Token C'
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = _7335
                                            mem[mem[64] + 100] = 1
                                            require ext_code.size(stor12)
                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 2, 0, _7335, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if stor3 != address(cd[(arg5 + 132)]):
                                                _7815 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_7815] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                            else:
                                                _7835 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_7835] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                else:
                                    if stor3 != address(cd[(arg5 + 100)]):
                                        if stor1 == address(cd[(arg5 + 132)]):
                                            mem[mem[64] + 36] = 1
                                            mem[mem[64] + 68] = _7335
                                            mem[mem[64] + 100] = 1
                                            require ext_code.size(stor12)
                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 1, _7335, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7791 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_7791] <= 0:
                                                revert with 0, 'Contract has not recived Token C'
                                        else:
                                            if stor2 == address(cd[(arg5 + 132)]):
                                                mem[mem[64] + 36] = 2
                                                mem[mem[64] + 68] = _7335
                                                mem[mem[64] + 100] = 1
                                                require ext_code.size(stor12)
                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 2, _7335, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7812 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_7812] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = _7335
                                                mem[mem[64] + 100] = 1
                                                require ext_code.size(stor12)
                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, _7335, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if stor3 != address(cd[(arg5 + 132)]):
                                                    _7811 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_7811] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                                                else:
                                                    _7831 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_7831] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                                    else:
                                        if stor1 == address(cd[(arg5 + 132)]):
                                            mem[mem[64] + 36] = 1
                                            mem[mem[64] + 68] = _7335
                                            mem[mem[64] + 100] = 1
                                            require ext_code.size(stor12)
                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 1, _7335, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7814 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_7814] <= 0:
                                                revert with 0, 'Contract has not recived Token C'
                                        else:
                                            if stor2 == address(cd[(arg5 + 132)]):
                                                mem[mem[64] + 36] = 2
                                                mem[mem[64] + 68] = _7335
                                                mem[mem[64] + 100] = 1
                                                require ext_code.size(stor12)
                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 2, _7335, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7834 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_7834] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = _7335
                                                mem[mem[64] + 100] = 1
                                                require ext_code.size(stor12)
                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, _7335, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if stor3 != address(cd[(arg5 + 132)]):
                                                    _7833 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_7833] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                                                else:
                                                    _7858 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_7858] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                else:
                    _7430 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_7430]
                    mem[_7430 + 32] = address(cd[(arg5 + 100)])
                    require 1 < mem[_7430]
                    mem[_7430 + 64] = address(cd[(arg5 + 132)])
                    mem[_7430 + 100] = stor6
                    mem[_7430 + 132] = -1
                    require ext_code.size(address(cd[(arg5 + 100)]))
                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor6, -1
                    mem[_7430 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7430 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_7430 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_7430 + ceil32(return_data.size) + 100] = _7335
                    mem[_7430 + ceil32(return_data.size) + 132] = 1
                    mem[_7430 + ceil32(return_data.size) + 164] = 160
                    mem[_7430 + ceil32(return_data.size) + 260] = mem[_7430]
                    idx = 0
                    s = _7430 + ceil32(return_data.size) + 292
                    t = _7430 + 32
                    while idx < mem[_7430]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_7430 + ceil32(return_data.size) + 196] = this.address
                    mem[_7430 + ceil32(return_data.size) + 228] = block.timestamp + 1
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _7335, 1, 160, address(this.address), block.timestamp + 1, mem[_7430 + ceil32(return_data.size) + 260 len (32 * mem[_7430]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_7430 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _7430 + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _8100 = mem[_7430 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7335) >> 32
                    require mem[_7430 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7335) >> 32 <= test266151307()
                    require _7430 + ceil32(return_data.size) + mem[_7430 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7335) >> 32 + 127 < _7430 + ceil32(return_data.size) + return_data.size + 96
                    _8106 = mem[_7430 + ceil32(return_data.size) + mem[_7430 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7335) >> 32 + 96]
                    require mem[_7430 + ceil32(return_data.size) + mem[_7430 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7335) >> 32 + 96] <= test266151307()
                    require (32 * mem[_7430 + ceil32(return_data.size) + mem[_7430 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7335) >> 32 + 96]) + 32 >= 0 and _7430 + (2 * ceil32(return_data.size)) + (32 * mem[_7430 + ceil32(return_data.size) + mem[_7430 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7335) >> 32 + 96]) + 128 <= test266151307()
                    mem[64] = _7430 + (2 * ceil32(return_data.size)) + (32 * mem[_7430 + ceil32(return_data.size) + mem[_7430 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7335) >> 32 + 96]) + 128
                    mem[_7430 + (2 * ceil32(return_data.size)) + 96] = _8106
                    require return_data.size >= _8100 + (32 * _8106) + 32
                    mem[_7430 + (2 * ceil32(return_data.size)) + 128 len 32 * _8106] = mem[_7430 + ceil32(return_data.size) + _8100 + 128 len 32 * _8106]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 132)]))
                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8190 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_8190] <= 0:
                        revert with 0, 'Contract has not recived Token C'
        else:
            if stor6 != address(cd[(arg5 + 164)]):
                if stor7 == address(cd[(arg5 + 164)]):
                    mem[324] = stor7
                    mem[356] = -1
                    require ext_code.size(address(cd[(arg5 + 68)]))
                    call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor7, -1
                    mem[320] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if stor1 == address(cd[(arg5 + 68)]):
                        mem[ceil32(return_data.size) + 356] = 0
                        mem[ceil32(return_data.size) + 388] = arg3
                        mem[ceil32(return_data.size) + 420] = 1
                        require ext_code.size(stor11)
                        call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args 1, 0, arg3, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 324] = this.address
                        require ext_code.size(address(cd[(arg5 + 100)]))
                        staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Contract has not recived Token B'
                        if stor5 == address(cd[(arg5 + 196)]):
                            mem[(2 * ceil32(return_data.size)) + 320] = 2
                            mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                            mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                            mem[(2 * ceil32(return_data.size)) + 420] = stor5
                            mem[(2 * ceil32(return_data.size)) + 452] = -1
                            require ext_code.size(address(cd[(arg5 + 100)]))
                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args stor5, -1
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
                            _6075 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                            require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                            _6118 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                            mem[(6 * ceil32(return_data.size)) + 416] = _6118
                            require return_data.size >= _6075 + (32 * _6118) + 32
                            mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6118] = mem[(4 * ceil32(return_data.size)) + _6075 + 448 len 32 * _6118]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[(arg5 + 132)]))
                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7290 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7290] <= 0:
                                revert with 0, 'Contract has not recived Token C'
                        else:
                            if stor6 != address(cd[(arg5 + 196)]):
                                if stor7 == address(cd[(arg5 + 196)]):
                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args stor7, -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(stor11)
                                    if stor1 == address(cd[(arg5 + 100)]):
                                        call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining wei
                                            args 1, 0, ext_call.return_data[0], 1
                                    else:
                                        if stor2 != address(cd[(arg5 + 100)]):
                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0, ext_call.return_data[0], 1
                                        else:
                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 1, ext_call.return_data[0], 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if stor8 == address(cd[(arg5 + 196)]):
                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor8, -1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(stor12)
                                        if stor1 == address(cd[(arg5 + 100)]):
                                            if stor1 == address(cd[(arg5 + 132)]):
                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 1, 1, ext_call.return_data[0], 1
                                            else:
                                                if stor2 == address(cd[(arg5 + 132)]):
                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 1, 2, ext_call.return_data[0], 1
                                                else:
                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 1, 0, ext_call.return_data[0], 1
                                        else:
                                            if stor2 == address(cd[(arg5 + 100)]):
                                                if stor1 == address(cd[(arg5 + 132)]):
                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 2, 1, ext_call.return_data[0], 1
                                                else:
                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 2, 2, ext_call.return_data[0], 1
                                                    else:
                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 2, 0, ext_call.return_data[0], 1
                                            else:
                                                if stor1 == address(cd[(arg5 + 132)]):
                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 1, ext_call.return_data[0], 1
                                                else:
                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 2, ext_call.return_data[0], 1
                                                    else:
                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, ext_call.return_data[0], 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(cd[(arg5 + 132)]))
                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Contract has not recived Token C'
                            else:
                                mem[(2 * ceil32(return_data.size)) + 320] = 2
                                mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                mem[(2 * ceil32(return_data.size)) + 452] = -1
                                require ext_code.size(address(cd[(arg5 + 100)]))
                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args stor6, -1
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
                                _6074 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                _6117 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                mem[(6 * ceil32(return_data.size)) + 416] = _6117
                                require return_data.size >= _6074 + (32 * _6117) + 32
                                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6117] = mem[(4 * ceil32(return_data.size)) + _6074 + 448 len 32 * _6117]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[(arg5 + 132)]))
                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7289 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7289] <= 0:
                                    revert with 0, 'Contract has not recived Token C'
                    else:
                        if stor2 != address(cd[(arg5 + 68)]):
                            mem[ceil32(return_data.size) + 356] = 0
                            mem[ceil32(return_data.size) + 388] = arg3
                            mem[ceil32(return_data.size) + 420] = 1
                            require ext_code.size(stor11)
                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, arg3, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 324] = this.address
                            require ext_code.size(address(cd[(arg5 + 100)]))
                            staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'Contract has not recived Token B'
                            if stor5 == address(cd[(arg5 + 196)]):
                                mem[(2 * ceil32(return_data.size)) + 320] = 2
                                mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                mem[(2 * ceil32(return_data.size)) + 420] = stor5
                                mem[(2 * ceil32(return_data.size)) + 452] = -1
                                require ext_code.size(address(cd[(arg5 + 100)]))
                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args stor5, -1
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
                                _6071 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                _6114 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                mem[(6 * ceil32(return_data.size)) + 416] = _6114
                                require return_data.size >= _6071 + (32 * _6114) + 32
                                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6114] = mem[(4 * ceil32(return_data.size)) + _6071 + 448 len 32 * _6114]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[(arg5 + 132)]))
                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7286 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7286] <= 0:
                                    revert with 0, 'Contract has not recived Token C'
                            else:
                                if stor6 != address(cd[(arg5 + 196)]):
                                    if stor7 == address(cd[(arg5 + 196)]):
                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor7, -1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(stor11)
                                        if stor1 == address(cd[(arg5 + 100)]):
                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 1, 0, ext_call.return_data[0], 1
                                        else:
                                            if stor2 != address(cd[(arg5 + 100)]):
                                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, ext_call.return_data[0], 1
                                            else:
                                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 1, ext_call.return_data[0], 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor8 == address(cd[(arg5 + 196)]):
                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor8, -1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(stor12)
                                            if stor1 == address(cd[(arg5 + 100)]):
                                                if stor1 == address(cd[(arg5 + 132)]):
                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 1, 1, ext_call.return_data[0], 1
                                                else:
                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 1, 2, ext_call.return_data[0], 1
                                                    else:
                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 1, 0, ext_call.return_data[0], 1
                                            else:
                                                if stor2 == address(cd[(arg5 + 100)]):
                                                    if stor1 == address(cd[(arg5 + 132)]):
                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 2, 1, ext_call.return_data[0], 1
                                                    else:
                                                        if stor2 == address(cd[(arg5 + 132)]):
                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 2, 2, ext_call.return_data[0], 1
                                                        else:
                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 2, 0, ext_call.return_data[0], 1
                                                else:
                                                    if stor1 == address(cd[(arg5 + 132)]):
                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 1, ext_call.return_data[0], 1
                                                    else:
                                                        if stor2 == address(cd[(arg5 + 132)]):
                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 2, ext_call.return_data[0], 1
                                                        else:
                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, ext_call.return_data[0], 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Contract has not recived Token C'
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 320] = 2
                                    mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                    mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                    mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                    mem[(2 * ceil32(return_data.size)) + 452] = -1
                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args stor6, -1
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
                                    _6070 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                    _6113 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                    mem[(6 * ceil32(return_data.size)) + 416] = _6113
                                    require return_data.size >= _6070 + (32 * _6113) + 32
                                    mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6113] = mem[(4 * ceil32(return_data.size)) + _6070 + 448 len 32 * _6113]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7285 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7285] <= 0:
                                        revert with 0, 'Contract has not recived Token C'
                        else:
                            mem[ceil32(return_data.size) + 356] = 1
                            mem[ceil32(return_data.size) + 388] = arg3
                            mem[ceil32(return_data.size) + 420] = 1
                            require ext_code.size(stor11)
                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args 0, 1, arg3, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 324] = this.address
                            require ext_code.size(address(cd[(arg5 + 100)]))
                            staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'Contract has not recived Token B'
                            if stor5 == address(cd[(arg5 + 196)]):
                                mem[(2 * ceil32(return_data.size)) + 320] = 2
                                mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                mem[(2 * ceil32(return_data.size)) + 420] = stor5
                                mem[(2 * ceil32(return_data.size)) + 452] = -1
                                require ext_code.size(address(cd[(arg5 + 100)]))
                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args stor5, -1
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
                                _6073 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                _6116 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                mem[(6 * ceil32(return_data.size)) + 416] = _6116
                                require return_data.size >= _6073 + (32 * _6116) + 32
                                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6116] = mem[(4 * ceil32(return_data.size)) + _6073 + 448 len 32 * _6116]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[(arg5 + 132)]))
                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7288 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7288] <= 0:
                                    revert with 0, 'Contract has not recived Token C'
                            else:
                                if stor6 != address(cd[(arg5 + 196)]):
                                    if stor7 == address(cd[(arg5 + 196)]):
                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor7, -1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(stor11)
                                        if stor1 == address(cd[(arg5 + 100)]):
                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 1, 0, ext_call.return_data[0], 1
                                        else:
                                            if stor2 != address(cd[(arg5 + 100)]):
                                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, ext_call.return_data[0], 1
                                            else:
                                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 1, ext_call.return_data[0], 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor8 == address(cd[(arg5 + 196)]):
                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor8, -1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(stor12)
                                            if stor1 == address(cd[(arg5 + 100)]):
                                                if stor1 == address(cd[(arg5 + 132)]):
                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 1, 1, ext_call.return_data[0], 1
                                                else:
                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 1, 2, ext_call.return_data[0], 1
                                                    else:
                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 1, 0, ext_call.return_data[0], 1
                                            else:
                                                if stor2 == address(cd[(arg5 + 100)]):
                                                    if stor1 == address(cd[(arg5 + 132)]):
                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 2, 1, ext_call.return_data[0], 1
                                                    else:
                                                        if stor2 == address(cd[(arg5 + 132)]):
                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 2, 2, ext_call.return_data[0], 1
                                                        else:
                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 2, 0, ext_call.return_data[0], 1
                                                else:
                                                    if stor1 == address(cd[(arg5 + 132)]):
                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 1, ext_call.return_data[0], 1
                                                    else:
                                                        if stor2 == address(cd[(arg5 + 132)]):
                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 2, ext_call.return_data[0], 1
                                                        else:
                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, ext_call.return_data[0], 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Contract has not recived Token C'
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 320] = 2
                                    mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                    mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                    mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                    mem[(2 * ceil32(return_data.size)) + 452] = -1
                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args stor6, -1
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
                                    _6072 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                    _6115 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                    mem[(6 * ceil32(return_data.size)) + 416] = _6115
                                    require return_data.size >= _6072 + (32 * _6115) + 32
                                    mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6115] = mem[(4 * ceil32(return_data.size)) + _6072 + 448 len 32 * _6115]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7287 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7287] <= 0:
                                        revert with 0, 'Contract has not recived Token C'
                else:
                    if stor8 != address(cd[(arg5 + 164)]):
                        mem[324] = this.address
                        require ext_code.size(address(cd[(arg5 + 100)]))
                        staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Contract has not recived Token B'
                        if stor5 == address(cd[(arg5 + 196)]):
                            mem[ceil32(return_data.size) + 320] = 2
                            mem[ceil32(return_data.size) + 352] = address(cd[(arg5 + 100)])
                            mem[ceil32(return_data.size) + 384] = address(cd[(arg5 + 132)])
                            mem[ceil32(return_data.size) + 420] = stor5
                            mem[ceil32(return_data.size) + 452] = -1
                            require ext_code.size(address(cd[(arg5 + 100)]))
                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args stor5, -1
                            mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 416
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 452] = 1
                            mem[(2 * ceil32(return_data.size)) + 484] = 160
                            mem[(2 * ceil32(return_data.size)) + 580] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 612
                            t = ceil32(return_data.size) + 352
                            while idx < mem[ceil32(return_data.size) + 320]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 516] = this.address
                            mem[(2 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                            require ext_code.size(address(cd[(arg5 + 196)]))
                            call address(cd[(arg5 + 196)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 672]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5994 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6037 = mem[_5994]
                            require mem[_5994] <= test266151307()
                            require _5994 + mem[_5994] + 31 < _5994 + return_data.size
                            _6080 = mem[_5994 + mem[_5994]]
                            require mem[_5994 + mem[_5994]] <= test266151307()
                            require (32 * mem[_5994 + mem[_5994]]) + 32 >= 0 and _5994 + ceil32(return_data.size) + (32 * mem[_5994 + mem[_5994]]) + 32 <= test266151307()
                            mem[64] = _5994 + ceil32(return_data.size) + (32 * mem[_5994 + mem[_5994]]) + 32
                            mem[_5994 + ceil32(return_data.size)] = _6080
                            require return_data.size >= _6037 + (32 * _6080) + 32
                            mem[_5994 + ceil32(return_data.size) + 32 len 32 * _6080] = mem[_5994 + _6037 + 32 len 32 * _6080]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[(arg5 + 132)]))
                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7252 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7252] <= 0:
                                revert with 0, 'Contract has not recived Token C'
                        else:
                            if stor6 != address(cd[(arg5 + 196)]):
                                if stor7 == address(cd[(arg5 + 196)]):
                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args stor7, -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(stor11)
                                    if stor1 == address(cd[(arg5 + 100)]):
                                        call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining wei
                                            args 1, 0, ext_call.return_data[0], 1
                                    else:
                                        if stor2 != address(cd[(arg5 + 100)]):
                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0, ext_call.return_data[0], 1
                                        else:
                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 1, ext_call.return_data[0], 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if stor8 == address(cd[(arg5 + 196)]):
                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor8, -1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(stor12)
                                        if stor1 == address(cd[(arg5 + 100)]):
                                            if stor1 == address(cd[(arg5 + 132)]):
                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 1, 1, ext_call.return_data[0], 1
                                            else:
                                                if stor2 == address(cd[(arg5 + 132)]):
                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 1, 2, ext_call.return_data[0], 1
                                                else:
                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 1, 0, ext_call.return_data[0], 1
                                        else:
                                            if stor2 == address(cd[(arg5 + 100)]):
                                                if stor1 == address(cd[(arg5 + 132)]):
                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 2, 1, ext_call.return_data[0], 1
                                                else:
                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 2, 2, ext_call.return_data[0], 1
                                                    else:
                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 2, 0, ext_call.return_data[0], 1
                                            else:
                                                if stor1 == address(cd[(arg5 + 132)]):
                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 1, ext_call.return_data[0], 1
                                                else:
                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 2, ext_call.return_data[0], 1
                                                    else:
                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, ext_call.return_data[0], 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(cd[(arg5 + 132)]))
                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Contract has not recived Token C'
                            else:
                                mem[ceil32(return_data.size) + 320] = 2
                                mem[ceil32(return_data.size) + 352] = address(cd[(arg5 + 100)])
                                mem[ceil32(return_data.size) + 384] = address(cd[(arg5 + 132)])
                                mem[ceil32(return_data.size) + 420] = stor6
                                mem[ceil32(return_data.size) + 452] = -1
                                require ext_code.size(address(cd[(arg5 + 100)]))
                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args stor6, -1
                                mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                mem[(2 * ceil32(return_data.size)) + 452] = 1
                                mem[(2 * ceil32(return_data.size)) + 484] = 160
                                mem[(2 * ceil32(return_data.size)) + 580] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 612
                                t = ceil32(return_data.size) + 352
                                while idx < mem[ceil32(return_data.size) + 320]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 516] = this.address
                                mem[(2 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                                require ext_code.size(address(cd[(arg5 + 196)]))
                                call address(cd[(arg5 + 196)]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 672]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5993 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6036 = mem[_5993]
                                require mem[_5993] <= test266151307()
                                require _5993 + mem[_5993] + 31 < _5993 + return_data.size
                                _6079 = mem[_5993 + mem[_5993]]
                                require mem[_5993 + mem[_5993]] <= test266151307()
                                require (32 * mem[_5993 + mem[_5993]]) + 32 >= 0 and _5993 + ceil32(return_data.size) + (32 * mem[_5993 + mem[_5993]]) + 32 <= test266151307()
                                mem[64] = _5993 + ceil32(return_data.size) + (32 * mem[_5993 + mem[_5993]]) + 32
                                mem[_5993 + ceil32(return_data.size)] = _6079
                                require return_data.size >= _6036 + (32 * _6079) + 32
                                mem[_5993 + ceil32(return_data.size) + 32 len 32 * _6079] = mem[_5993 + _6036 + 32 len 32 * _6079]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[(arg5 + 132)]))
                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7251 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7251] <= 0:
                                    revert with 0, 'Contract has not recived Token C'
                    else:
                        mem[324] = stor8
                        mem[356] = -1
                        require ext_code.size(address(cd[(arg5 + 68)]))
                        call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args stor8, -1
                        mem[320] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if stor1 == address(cd[(arg5 + 68)]):
                            if stor1 == address(cd[(arg5 + 100)]):
                                mem[ceil32(return_data.size) + 356] = 1
                                mem[ceil32(return_data.size) + 388] = arg3
                                mem[ceil32(return_data.size) + 420] = 1
                                require ext_code.size(stor11)
                                call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args 1, 1, arg3, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 324] = this.address
                                require ext_code.size(address(cd[(arg5 + 100)]))
                                staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'Contract has not recived Token B'
                                if stor5 == address(cd[(arg5 + 196)]):
                                    mem[(2 * ceil32(return_data.size)) + 320] = 2
                                    mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                    mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                    mem[(2 * ceil32(return_data.size)) + 420] = stor5
                                    mem[(2 * ceil32(return_data.size)) + 452] = -1
                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args stor5, -1
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
                                    _6069 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                    _6112 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                    mem[(6 * ceil32(return_data.size)) + 416] = _6112
                                    require return_data.size >= _6069 + (32 * _6112) + 32
                                    mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6112] = mem[(4 * ceil32(return_data.size)) + _6069 + 448 len 32 * _6112]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7284 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7284] <= 0:
                                        revert with 0, 'Contract has not recived Token C'
                                else:
                                    if stor6 != address(cd[(arg5 + 196)]):
                                        if stor7 == address(cd[(arg5 + 196)]):
                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor7, -1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(stor11)
                                            if stor1 == address(cd[(arg5 + 100)]):
                                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 1, 0, ext_call.return_data[0], 1
                                            else:
                                                if stor2 != address(cd[(arg5 + 100)]):
                                                    call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, ext_call.return_data[0], 1
                                                else:
                                                    call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 1, ext_call.return_data[0], 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor8 == address(cd[(arg5 + 196)]):
                                                require ext_code.size(address(cd[(arg5 + 100)]))
                                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor8, -1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(stor12)
                                                if stor1 == address(cd[(arg5 + 100)]):
                                                    if stor1 == address(cd[(arg5 + 132)]):
                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 1, 1, ext_call.return_data[0], 1
                                                    else:
                                                        if stor2 == address(cd[(arg5 + 132)]):
                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 1, 2, ext_call.return_data[0], 1
                                                        else:
                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 1, 0, ext_call.return_data[0], 1
                                                else:
                                                    if stor2 == address(cd[(arg5 + 100)]):
                                                        if stor1 == address(cd[(arg5 + 132)]):
                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 2, 1, ext_call.return_data[0], 1
                                                        else:
                                                            if stor2 == address(cd[(arg5 + 132)]):
                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 2, 2, ext_call.return_data[0], 1
                                                            else:
                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 2, 0, ext_call.return_data[0], 1
                                                    else:
                                                        if stor1 == address(cd[(arg5 + 132)]):
                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 1, ext_call.return_data[0], 1
                                                        else:
                                                            if stor2 == address(cd[(arg5 + 132)]):
                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0, 2, ext_call.return_data[0], 1
                                                            else:
                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0, 0, ext_call.return_data[0], 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Contract has not recived Token C'
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 320] = 2
                                        mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                        mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                        mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                        mem[(2 * ceil32(return_data.size)) + 452] = -1
                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor6, -1
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
                                        _6068 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                        require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                        _6111 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                        mem[(6 * ceil32(return_data.size)) + 416] = _6111
                                        require return_data.size >= _6068 + (32 * _6111) + 32
                                        mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6111] = mem[(4 * ceil32(return_data.size)) + _6068 + 448 len 32 * _6111]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7283 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_7283] <= 0:
                                            revert with 0, 'Contract has not recived Token C'
                            else:
                                if stor2 == address(cd[(arg5 + 100)]):
                                    mem[ceil32(return_data.size) + 356] = 2
                                    mem[ceil32(return_data.size) + 388] = arg3
                                    mem[ceil32(return_data.size) + 420] = 1
                                    require ext_code.size(stor11)
                                    call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args 1, 2, arg3, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 324] = this.address
                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                    staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Contract has not recived Token B'
                                    if stor5 == address(cd[(arg5 + 196)]):
                                        mem[(2 * ceil32(return_data.size)) + 320] = 2
                                        mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                        mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                        mem[(2 * ceil32(return_data.size)) + 420] = stor5
                                        mem[(2 * ceil32(return_data.size)) + 452] = -1
                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor5, -1
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
                                        _6067 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                        require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                        _6110 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                        mem[(6 * ceil32(return_data.size)) + 416] = _6110
                                        require return_data.size >= _6067 + (32 * _6110) + 32
                                        mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6110] = mem[(4 * ceil32(return_data.size)) + _6067 + 448 len 32 * _6110]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7282 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_7282] <= 0:
                                            revert with 0, 'Contract has not recived Token C'
                                    else:
                                        if stor6 != address(cd[(arg5 + 196)]):
                                            if stor7 == address(cd[(arg5 + 196)]):
                                                require ext_code.size(address(cd[(arg5 + 100)]))
                                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor7, -1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(stor11)
                                                if stor1 == address(cd[(arg5 + 100)]):
                                                    call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 1, 0, ext_call.return_data[0], 1
                                                else:
                                                    if stor2 != address(cd[(arg5 + 100)]):
                                                        call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, ext_call.return_data[0], 1
                                                    else:
                                                        call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 1, ext_call.return_data[0], 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor8 == address(cd[(arg5 + 196)]):
                                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor8, -1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(stor12)
                                                    if stor1 == address(cd[(arg5 + 100)]):
                                                        if stor1 == address(cd[(arg5 + 132)]):
                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 1, 1, ext_call.return_data[0], 1
                                                        else:
                                                            if stor2 == address(cd[(arg5 + 132)]):
                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 1, 2, ext_call.return_data[0], 1
                                                            else:
                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 1, 0, ext_call.return_data[0], 1
                                                    else:
                                                        if stor2 == address(cd[(arg5 + 100)]):
                                                            if stor1 == address(cd[(arg5 + 132)]):
                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 2, 1, ext_call.return_data[0], 1
                                                            else:
                                                                if stor2 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 2, 2, ext_call.return_data[0], 1
                                                                else:
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 2, 0, ext_call.return_data[0], 1
                                                        else:
                                                            if stor1 == address(cd[(arg5 + 132)]):
                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0, 1, ext_call.return_data[0], 1
                                                            else:
                                                                if stor2 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 2, ext_call.return_data[0], 1
                                                                else:
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0, ext_call.return_data[0], 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'Contract has not recived Token C'
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + 320] = 2
                                            mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                            mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                            mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                            mem[(2 * ceil32(return_data.size)) + 452] = -1
                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor6, -1
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
                                            _6066 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                            require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                            _6109 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                            mem[(6 * ceil32(return_data.size)) + 416] = _6109
                                            require return_data.size >= _6066 + (32 * _6109) + 32
                                            mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6109] = mem[(4 * ceil32(return_data.size)) + _6066 + 448 len 32 * _6109]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7281 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_7281] <= 0:
                                                revert with 0, 'Contract has not recived Token C'
                                else:
                                    mem[ceil32(return_data.size) + 356] = 0
                                    mem[ceil32(return_data.size) + 388] = arg3
                                    mem[ceil32(return_data.size) + 420] = 1
                                    require ext_code.size(stor11)
                                    call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args 1, 0, arg3, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 324] = this.address
                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                    staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Contract has not recived Token B'
                                    if stor3 != address(cd[(arg5 + 100)]):
                                        if stor5 == address(cd[(arg5 + 196)]):
                                            mem[(2 * ceil32(return_data.size)) + 320] = 2
                                            mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                            mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                            mem[(2 * ceil32(return_data.size)) + 420] = stor5
                                            mem[(2 * ceil32(return_data.size)) + 452] = -1
                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor5, -1
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
                                            _6063 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                            require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                            _6106 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                            mem[(6 * ceil32(return_data.size)) + 416] = _6106
                                            require return_data.size >= _6063 + (32 * _6106) + 32
                                            mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6106] = mem[(4 * ceil32(return_data.size)) + _6063 + 448 len 32 * _6106]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7278 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_7278] <= 0:
                                                revert with 0, 'Contract has not recived Token C'
                                        else:
                                            if stor6 != address(cd[(arg5 + 196)]):
                                                if stor7 == address(cd[(arg5 + 196)]):
                                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor7, -1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(stor11)
                                                    if stor1 == address(cd[(arg5 + 100)]):
                                                        call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 1, 0, ext_call.return_data[0], 1
                                                    else:
                                                        if stor2 != address(cd[(arg5 + 100)]):
                                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, ext_call.return_data[0], 1
                                                        else:
                                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 1, ext_call.return_data[0], 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if stor8 == address(cd[(arg5 + 196)]):
                                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args stor8, -1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_code.size(stor12)
                                                        if stor1 == address(cd[(arg5 + 100)]):
                                                            if stor1 == address(cd[(arg5 + 132)]):
                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 1, 1, ext_call.return_data[0], 1
                                                            else:
                                                                if stor2 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 1, 2, ext_call.return_data[0], 1
                                                                else:
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 1, 0, ext_call.return_data[0], 1
                                                        else:
                                                            if stor2 == address(cd[(arg5 + 100)]):
                                                                if stor1 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 2, 1, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 2, 2, ext_call.return_data[0], 1
                                                                    else:
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 2, 0, ext_call.return_data[0], 1
                                                            else:
                                                                if stor1 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 1, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 2, ext_call.return_data[0], 1
                                                                    else:
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 0, ext_call.return_data[0], 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                                mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                require ext_code.size(address(cd[(arg5 + 100)]))
                                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor6, -1
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
                                                _6062 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                _6105 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                mem[(6 * ceil32(return_data.size)) + 416] = _6105
                                                require return_data.size >= _6062 + (32 * _6105) + 32
                                                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6105] = mem[(4 * ceil32(return_data.size)) + _6062 + 448 len 32 * _6105]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7277 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_7277] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                    else:
                                        if stor5 == address(cd[(arg5 + 196)]):
                                            mem[(2 * ceil32(return_data.size)) + 320] = 2
                                            mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                            mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                            mem[(2 * ceil32(return_data.size)) + 420] = stor5
                                            mem[(2 * ceil32(return_data.size)) + 452] = -1
                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor5, -1
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
                                            _6065 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                            require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                            _6108 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                            mem[(6 * ceil32(return_data.size)) + 416] = _6108
                                            require return_data.size >= _6065 + (32 * _6108) + 32
                                            mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6108] = mem[(4 * ceil32(return_data.size)) + _6065 + 448 len 32 * _6108]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7280 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_7280] <= 0:
                                                revert with 0, 'Contract has not recived Token C'
                                        else:
                                            if stor6 != address(cd[(arg5 + 196)]):
                                                if stor7 == address(cd[(arg5 + 196)]):
                                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor7, -1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(stor11)
                                                    if stor1 == address(cd[(arg5 + 100)]):
                                                        call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 1, 0, ext_call.return_data[0], 1
                                                    else:
                                                        if stor2 != address(cd[(arg5 + 100)]):
                                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, ext_call.return_data[0], 1
                                                        else:
                                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 1, ext_call.return_data[0], 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if stor8 == address(cd[(arg5 + 196)]):
                                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args stor8, -1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_code.size(stor12)
                                                        if stor1 == address(cd[(arg5 + 100)]):
                                                            if stor1 == address(cd[(arg5 + 132)]):
                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 1, 1, ext_call.return_data[0], 1
                                                            else:
                                                                if stor2 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 1, 2, ext_call.return_data[0], 1
                                                                else:
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 1, 0, ext_call.return_data[0], 1
                                                        else:
                                                            if stor2 == address(cd[(arg5 + 100)]):
                                                                if stor1 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 2, 1, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 2, 2, ext_call.return_data[0], 1
                                                                    else:
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 2, 0, ext_call.return_data[0], 1
                                                            else:
                                                                if stor1 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 1, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 2, ext_call.return_data[0], 1
                                                                    else:
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 0, ext_call.return_data[0], 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                                mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                require ext_code.size(address(cd[(arg5 + 100)]))
                                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor6, -1
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
                                                _6064 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                _6107 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                mem[(6 * ceil32(return_data.size)) + 416] = _6107
                                                require return_data.size >= _6064 + (32 * _6107) + 32
                                                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6107] = mem[(4 * ceil32(return_data.size)) + _6064 + 448 len 32 * _6107]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7279 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_7279] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                        else:
                            if stor2 == address(cd[(arg5 + 68)]):
                                if stor1 == address(cd[(arg5 + 100)]):
                                    mem[ceil32(return_data.size) + 356] = 1
                                    mem[ceil32(return_data.size) + 388] = arg3
                                    mem[ceil32(return_data.size) + 420] = 1
                                    require ext_code.size(stor11)
                                    call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args 2, 1, arg3, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 324] = this.address
                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                    staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'Contract has not recived Token B'
                                    if stor5 == address(cd[(arg5 + 196)]):
                                        mem[(2 * ceil32(return_data.size)) + 320] = 2
                                        mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                        mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                        mem[(2 * ceil32(return_data.size)) + 420] = stor5
                                        mem[(2 * ceil32(return_data.size)) + 452] = -1
                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args stor5, -1
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
                                        _6061 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                        require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                        _6104 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                        mem[(6 * ceil32(return_data.size)) + 416] = _6104
                                        require return_data.size >= _6061 + (32 * _6104) + 32
                                        mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6104] = mem[(4 * ceil32(return_data.size)) + _6061 + 448 len 32 * _6104]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7276 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_7276] <= 0:
                                            revert with 0, 'Contract has not recived Token C'
                                    else:
                                        if stor6 != address(cd[(arg5 + 196)]):
                                            if stor7 == address(cd[(arg5 + 196)]):
                                                require ext_code.size(address(cd[(arg5 + 100)]))
                                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor7, -1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(stor11)
                                                if stor1 == address(cd[(arg5 + 100)]):
                                                    call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 1, 0, ext_call.return_data[0], 1
                                                else:
                                                    if stor2 != address(cd[(arg5 + 100)]):
                                                        call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, ext_call.return_data[0], 1
                                                    else:
                                                        call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 1, ext_call.return_data[0], 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor8 == address(cd[(arg5 + 196)]):
                                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor8, -1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(stor12)
                                                    if stor1 == address(cd[(arg5 + 100)]):
                                                        if stor1 == address(cd[(arg5 + 132)]):
                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 1, 1, ext_call.return_data[0], 1
                                                        else:
                                                            if stor2 == address(cd[(arg5 + 132)]):
                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 1, 2, ext_call.return_data[0], 1
                                                            else:
                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 1, 0, ext_call.return_data[0], 1
                                                    else:
                                                        if stor2 == address(cd[(arg5 + 100)]):
                                                            if stor1 == address(cd[(arg5 + 132)]):
                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 2, 1, ext_call.return_data[0], 1
                                                            else:
                                                                if stor2 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 2, 2, ext_call.return_data[0], 1
                                                                else:
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 2, 0, ext_call.return_data[0], 1
                                                        else:
                                                            if stor1 == address(cd[(arg5 + 132)]):
                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0, 1, ext_call.return_data[0], 1
                                                            else:
                                                                if stor2 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 2, ext_call.return_data[0], 1
                                                                else:
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0, ext_call.return_data[0], 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'Contract has not recived Token C'
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + 320] = 2
                                            mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                            mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                            mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                            mem[(2 * ceil32(return_data.size)) + 452] = -1
                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor6, -1
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
                                            _6060 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                            require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                            _6103 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                            mem[(6 * ceil32(return_data.size)) + 416] = _6103
                                            require return_data.size >= _6060 + (32 * _6103) + 32
                                            mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6103] = mem[(4 * ceil32(return_data.size)) + _6060 + 448 len 32 * _6103]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7275 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_7275] <= 0:
                                                revert with 0, 'Contract has not recived Token C'
                                else:
                                    if stor2 == address(cd[(arg5 + 100)]):
                                        mem[ceil32(return_data.size) + 356] = 2
                                        mem[ceil32(return_data.size) + 388] = arg3
                                        mem[ceil32(return_data.size) + 420] = 1
                                        require ext_code.size(stor11)
                                        call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining wei
                                            args 2, 2, arg3, 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(return_data.size) + 324] = this.address
                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                        staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Contract has not recived Token B'
                                        if stor5 == address(cd[(arg5 + 196)]):
                                            mem[(2 * ceil32(return_data.size)) + 320] = 2
                                            mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                            mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                            mem[(2 * ceil32(return_data.size)) + 420] = stor5
                                            mem[(2 * ceil32(return_data.size)) + 452] = -1
                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor5, -1
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
                                            _6059 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                            require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                            _6102 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                            mem[(6 * ceil32(return_data.size)) + 416] = _6102
                                            require return_data.size >= _6059 + (32 * _6102) + 32
                                            mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6102] = mem[(4 * ceil32(return_data.size)) + _6059 + 448 len 32 * _6102]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7274 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_7274] <= 0:
                                                revert with 0, 'Contract has not recived Token C'
                                        else:
                                            if stor6 != address(cd[(arg5 + 196)]):
                                                if stor7 == address(cd[(arg5 + 196)]):
                                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor7, -1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(stor11)
                                                    if stor1 == address(cd[(arg5 + 100)]):
                                                        call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 1, 0, ext_call.return_data[0], 1
                                                    else:
                                                        if stor2 != address(cd[(arg5 + 100)]):
                                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, ext_call.return_data[0], 1
                                                        else:
                                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 1, ext_call.return_data[0], 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if stor8 == address(cd[(arg5 + 196)]):
                                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args stor8, -1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_code.size(stor12)
                                                        if stor1 == address(cd[(arg5 + 100)]):
                                                            if stor1 == address(cd[(arg5 + 132)]):
                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 1, 1, ext_call.return_data[0], 1
                                                            else:
                                                                if stor2 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 1, 2, ext_call.return_data[0], 1
                                                                else:
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 1, 0, ext_call.return_data[0], 1
                                                        else:
                                                            if stor2 == address(cd[(arg5 + 100)]):
                                                                if stor1 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 2, 1, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 2, 2, ext_call.return_data[0], 1
                                                                    else:
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 2, 0, ext_call.return_data[0], 1
                                                            else:
                                                                if stor1 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 1, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 2, ext_call.return_data[0], 1
                                                                    else:
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 0, ext_call.return_data[0], 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                                mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                require ext_code.size(address(cd[(arg5 + 100)]))
                                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor6, -1
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
                                                _6058 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                _6101 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                mem[(6 * ceil32(return_data.size)) + 416] = _6101
                                                require return_data.size >= _6058 + (32 * _6101) + 32
                                                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6101] = mem[(4 * ceil32(return_data.size)) + _6058 + 448 len 32 * _6101]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7273 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_7273] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                    else:
                                        mem[ceil32(return_data.size) + 356] = 0
                                        mem[ceil32(return_data.size) + 388] = arg3
                                        mem[ceil32(return_data.size) + 420] = 1
                                        require ext_code.size(stor11)
                                        call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining wei
                                            args 2, 0, arg3, 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(return_data.size) + 324] = this.address
                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                        staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Contract has not recived Token B'
                                        if stor3 != address(cd[(arg5 + 100)]):
                                            if stor5 == address(cd[(arg5 + 196)]):
                                                mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                mem[(2 * ceil32(return_data.size)) + 420] = stor5
                                                mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                require ext_code.size(address(cd[(arg5 + 100)]))
                                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor5, -1
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
                                                _6055 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                _6098 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                mem[(6 * ceil32(return_data.size)) + 416] = _6098
                                                require return_data.size >= _6055 + (32 * _6098) + 32
                                                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6098] = mem[(4 * ceil32(return_data.size)) + _6055 + 448 len 32 * _6098]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7270 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_7270] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                            else:
                                                if stor6 != address(cd[(arg5 + 196)]):
                                                    if stor7 == address(cd[(arg5 + 196)]):
                                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args stor7, -1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_code.size(stor11)
                                                        if stor1 == address(cd[(arg5 + 100)]):
                                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 1, 0, ext_call.return_data[0], 1
                                                        else:
                                                            if stor2 != address(cd[(arg5 + 100)]):
                                                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0, 0, ext_call.return_data[0], 1
                                                            else:
                                                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0, 1, ext_call.return_data[0], 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if stor8 == address(cd[(arg5 + 196)]):
                                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args stor8, -1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            require ext_code.size(stor12)
                                                            if stor1 == address(cd[(arg5 + 100)]):
                                                                if stor1 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 1, 1, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 1, 2, ext_call.return_data[0], 1
                                                                    else:
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 1, 0, ext_call.return_data[0], 1
                                                            else:
                                                                if stor2 == address(cd[(arg5 + 100)]):
                                                                    if stor1 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 2, 1, ext_call.return_data[0], 1
                                                                    else:
                                                                        if stor2 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 2, 2, ext_call.return_data[0], 1
                                                                        else:
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 2, 0, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor1 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 1, ext_call.return_data[0], 1
                                                                    else:
                                                                        if stor2 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, 2, ext_call.return_data[0], 1
                                                                        else:
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, 0, ext_call.return_data[0], 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                    mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                    mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                    mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                                    mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor6, -1
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
                                                    _6054 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                    require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                    _6097 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                    mem[(6 * ceil32(return_data.size)) + 416] = _6097
                                                    require return_data.size >= _6054 + (32 * _6097) + 32
                                                    mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6097] = mem[(4 * ceil32(return_data.size)) + _6054 + 448 len 32 * _6097]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7269 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_7269] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                                        else:
                                            if stor5 == address(cd[(arg5 + 196)]):
                                                mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                mem[(2 * ceil32(return_data.size)) + 420] = stor5
                                                mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                require ext_code.size(address(cd[(arg5 + 100)]))
                                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor5, -1
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
                                                _6057 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                _6100 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                mem[(6 * ceil32(return_data.size)) + 416] = _6100
                                                require return_data.size >= _6057 + (32 * _6100) + 32
                                                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6100] = mem[(4 * ceil32(return_data.size)) + _6057 + 448 len 32 * _6100]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7272 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_7272] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                            else:
                                                if stor6 != address(cd[(arg5 + 196)]):
                                                    if stor7 == address(cd[(arg5 + 196)]):
                                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args stor7, -1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_code.size(stor11)
                                                        if stor1 == address(cd[(arg5 + 100)]):
                                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 1, 0, ext_call.return_data[0], 1
                                                        else:
                                                            if stor2 != address(cd[(arg5 + 100)]):
                                                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0, 0, ext_call.return_data[0], 1
                                                            else:
                                                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0, 1, ext_call.return_data[0], 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if stor8 == address(cd[(arg5 + 196)]):
                                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args stor8, -1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            require ext_code.size(stor12)
                                                            if stor1 == address(cd[(arg5 + 100)]):
                                                                if stor1 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 1, 1, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 1, 2, ext_call.return_data[0], 1
                                                                    else:
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 1, 0, ext_call.return_data[0], 1
                                                            else:
                                                                if stor2 == address(cd[(arg5 + 100)]):
                                                                    if stor1 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 2, 1, ext_call.return_data[0], 1
                                                                    else:
                                                                        if stor2 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 2, 2, ext_call.return_data[0], 1
                                                                        else:
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 2, 0, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor1 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 1, ext_call.return_data[0], 1
                                                                    else:
                                                                        if stor2 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, 2, ext_call.return_data[0], 1
                                                                        else:
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, 0, ext_call.return_data[0], 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                    mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                    mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                    mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                                    mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor6, -1
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
                                                    _6056 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                    require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                    _6099 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                    mem[(6 * ceil32(return_data.size)) + 416] = _6099
                                                    require return_data.size >= _6056 + (32 * _6099) + 32
                                                    mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6099] = mem[(4 * ceil32(return_data.size)) + _6056 + 448 len 32 * _6099]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7271 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_7271] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                            else:
                                if stor3 != address(cd[(arg5 + 68)]):
                                    if stor1 == address(cd[(arg5 + 100)]):
                                        mem[ceil32(return_data.size) + 356] = 1
                                        mem[ceil32(return_data.size) + 388] = arg3
                                        mem[ceil32(return_data.size) + 420] = 1
                                        require ext_code.size(stor11)
                                        call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining wei
                                            args 0, 1, arg3, 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(return_data.size) + 324] = this.address
                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                        staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Contract has not recived Token B'
                                        if stor5 == address(cd[(arg5 + 196)]):
                                            mem[(2 * ceil32(return_data.size)) + 320] = 2
                                            mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                            mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                            mem[(2 * ceil32(return_data.size)) + 420] = stor5
                                            mem[(2 * ceil32(return_data.size)) + 452] = -1
                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor5, -1
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
                                            _6045 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                            require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                            _6088 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                            mem[(6 * ceil32(return_data.size)) + 416] = _6088
                                            require return_data.size >= _6045 + (32 * _6088) + 32
                                            mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6088] = mem[(4 * ceil32(return_data.size)) + _6045 + 448 len 32 * _6088]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7260 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_7260] <= 0:
                                                revert with 0, 'Contract has not recived Token C'
                                        else:
                                            if stor6 != address(cd[(arg5 + 196)]):
                                                if stor7 == address(cd[(arg5 + 196)]):
                                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor7, -1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(stor11)
                                                    if stor1 == address(cd[(arg5 + 100)]):
                                                        call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 1, 0, ext_call.return_data[0], 1
                                                    else:
                                                        if stor2 != address(cd[(arg5 + 100)]):
                                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, ext_call.return_data[0], 1
                                                        else:
                                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 1, ext_call.return_data[0], 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if stor8 == address(cd[(arg5 + 196)]):
                                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args stor8, -1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_code.size(stor12)
                                                        if stor1 == address(cd[(arg5 + 100)]):
                                                            if stor1 == address(cd[(arg5 + 132)]):
                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 1, 1, ext_call.return_data[0], 1
                                                            else:
                                                                if stor2 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 1, 2, ext_call.return_data[0], 1
                                                                else:
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 1, 0, ext_call.return_data[0], 1
                                                        else:
                                                            if stor2 == address(cd[(arg5 + 100)]):
                                                                if stor1 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 2, 1, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 2, 2, ext_call.return_data[0], 1
                                                                    else:
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 2, 0, ext_call.return_data[0], 1
                                                            else:
                                                                if stor1 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 1, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 2, ext_call.return_data[0], 1
                                                                    else:
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 0, ext_call.return_data[0], 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                                mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                require ext_code.size(address(cd[(arg5 + 100)]))
                                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor6, -1
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
                                                _6044 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                _6087 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                mem[(6 * ceil32(return_data.size)) + 416] = _6087
                                                require return_data.size >= _6044 + (32 * _6087) + 32
                                                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6087] = mem[(4 * ceil32(return_data.size)) + _6044 + 448 len 32 * _6087]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7259 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_7259] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                    else:
                                        if stor2 == address(cd[(arg5 + 100)]):
                                            mem[ceil32(return_data.size) + 356] = 2
                                            mem[ceil32(return_data.size) + 388] = arg3
                                            mem[ceil32(return_data.size) + 420] = 1
                                            require ext_code.size(stor11)
                                            call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 2, arg3, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[ceil32(return_data.size) + 324] = this.address
                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                            staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'Contract has not recived Token B'
                                            if stor5 == address(cd[(arg5 + 196)]):
                                                mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                mem[(2 * ceil32(return_data.size)) + 420] = stor5
                                                mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                require ext_code.size(address(cd[(arg5 + 100)]))
                                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor5, -1
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
                                                _6043 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                _6086 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                mem[(6 * ceil32(return_data.size)) + 416] = _6086
                                                require return_data.size >= _6043 + (32 * _6086) + 32
                                                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6086] = mem[(4 * ceil32(return_data.size)) + _6043 + 448 len 32 * _6086]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7258 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_7258] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                            else:
                                                if stor6 != address(cd[(arg5 + 196)]):
                                                    if stor7 == address(cd[(arg5 + 196)]):
                                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args stor7, -1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_code.size(stor11)
                                                        if stor1 == address(cd[(arg5 + 100)]):
                                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 1, 0, ext_call.return_data[0], 1
                                                        else:
                                                            if stor2 != address(cd[(arg5 + 100)]):
                                                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0, 0, ext_call.return_data[0], 1
                                                            else:
                                                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0, 1, ext_call.return_data[0], 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if stor8 == address(cd[(arg5 + 196)]):
                                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args stor8, -1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            require ext_code.size(stor12)
                                                            if stor1 == address(cd[(arg5 + 100)]):
                                                                if stor1 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 1, 1, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 1, 2, ext_call.return_data[0], 1
                                                                    else:
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 1, 0, ext_call.return_data[0], 1
                                                            else:
                                                                if stor2 == address(cd[(arg5 + 100)]):
                                                                    if stor1 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 2, 1, ext_call.return_data[0], 1
                                                                    else:
                                                                        if stor2 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 2, 2, ext_call.return_data[0], 1
                                                                        else:
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 2, 0, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor1 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 1, ext_call.return_data[0], 1
                                                                    else:
                                                                        if stor2 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, 2, ext_call.return_data[0], 1
                                                                        else:
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, 0, ext_call.return_data[0], 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                    mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                    mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                    mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                                    mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor6, -1
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
                                                    _6042 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                    require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                    _6085 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                    mem[(6 * ceil32(return_data.size)) + 416] = _6085
                                                    require return_data.size >= _6042 + (32 * _6085) + 32
                                                    mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6085] = mem[(4 * ceil32(return_data.size)) + _6042 + 448 len 32 * _6085]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7257 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_7257] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                                        else:
                                            mem[ceil32(return_data.size) + 356] = 0
                                            mem[ceil32(return_data.size) + 388] = arg3
                                            mem[ceil32(return_data.size) + 420] = 1
                                            require ext_code.size(stor11)
                                            call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0, arg3, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[ceil32(return_data.size) + 324] = this.address
                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                            staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'Contract has not recived Token B'
                                            if stor3 != address(cd[(arg5 + 100)]):
                                                if stor5 == address(cd[(arg5 + 196)]):
                                                    mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                    mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                    mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                    mem[(2 * ceil32(return_data.size)) + 420] = stor5
                                                    mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor5, -1
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
                                                    _6039 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                    require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                    _6082 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                    mem[(6 * ceil32(return_data.size)) + 416] = _6082
                                                    require return_data.size >= _6039 + (32 * _6082) + 32
                                                    mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6082] = mem[(4 * ceil32(return_data.size)) + _6039 + 448 len 32 * _6082]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7254 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_7254] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                                                else:
                                                    if stor6 != address(cd[(arg5 + 196)]):
                                                        if stor7 == address(cd[(arg5 + 196)]):
                                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args stor7, -1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            require ext_code.size(stor11)
                                                            if stor1 == address(cd[(arg5 + 100)]):
                                                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 1, 0, ext_call.return_data[0], 1
                                                            else:
                                                                if stor2 != address(cd[(arg5 + 100)]):
                                                                    call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0, ext_call.return_data[0], 1
                                                                else:
                                                                    call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 1, ext_call.return_data[0], 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if stor8 == address(cd[(arg5 + 196)]):
                                                                require ext_code.size(address(cd[(arg5 + 100)]))
                                                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                                     gas gas_remaining wei
                                                                    args stor8, -1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                require ext_code.size(stor12)
                                                                if stor1 == address(cd[(arg5 + 100)]):
                                                                    if stor1 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 1, 1, ext_call.return_data[0], 1
                                                                    else:
                                                                        if stor2 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 1, 2, ext_call.return_data[0], 1
                                                                        else:
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 1, 0, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor2 == address(cd[(arg5 + 100)]):
                                                                        if stor1 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 2, 1, ext_call.return_data[0], 1
                                                                        else:
                                                                            if stor2 == address(cd[(arg5 + 132)]):
                                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 2, 2, ext_call.return_data[0], 1
                                                                            else:
                                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 2, 0, ext_call.return_data[0], 1
                                                                    else:
                                                                        if stor1 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, 1, ext_call.return_data[0], 1
                                                                        else:
                                                                            if stor2 == address(cd[(arg5 + 132)]):
                                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 0, 2, ext_call.return_data[0], 1
                                                                            else:
                                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 0, 0, ext_call.return_data[0], 1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                                        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'Contract has not recived Token C'
                                                    else:
                                                        mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                        mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                        mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                        mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                                        mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args stor6, -1
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
                                                        _6038 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                        require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                        _6081 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                        mem[(6 * ceil32(return_data.size)) + 416] = _6081
                                                        require return_data.size >= _6038 + (32 * _6081) + 32
                                                        mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6081] = mem[(4 * ceil32(return_data.size)) + _6038 + 448 len 32 * _6081]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                                        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7253 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_7253] <= 0:
                                                            revert with 0, 'Contract has not recived Token C'
                                            else:
                                                if stor5 == address(cd[(arg5 + 196)]):
                                                    mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                    mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                    mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                    mem[(2 * ceil32(return_data.size)) + 420] = stor5
                                                    mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor5, -1
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
                                                    _6041 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                    require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                    _6084 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                    mem[(6 * ceil32(return_data.size)) + 416] = _6084
                                                    require return_data.size >= _6041 + (32 * _6084) + 32
                                                    mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6084] = mem[(4 * ceil32(return_data.size)) + _6041 + 448 len 32 * _6084]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7256 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_7256] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                                                else:
                                                    if stor6 != address(cd[(arg5 + 196)]):
                                                        if stor7 == address(cd[(arg5 + 196)]):
                                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args stor7, -1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            require ext_code.size(stor11)
                                                            if stor1 == address(cd[(arg5 + 100)]):
                                                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 1, 0, ext_call.return_data[0], 1
                                                            else:
                                                                if stor2 != address(cd[(arg5 + 100)]):
                                                                    call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0, ext_call.return_data[0], 1
                                                                else:
                                                                    call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 1, ext_call.return_data[0], 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if stor8 == address(cd[(arg5 + 196)]):
                                                                require ext_code.size(address(cd[(arg5 + 100)]))
                                                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                                     gas gas_remaining wei
                                                                    args stor8, -1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                require ext_code.size(stor12)
                                                                if stor1 == address(cd[(arg5 + 100)]):
                                                                    if stor1 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 1, 1, ext_call.return_data[0], 1
                                                                    else:
                                                                        if stor2 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 1, 2, ext_call.return_data[0], 1
                                                                        else:
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 1, 0, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor2 == address(cd[(arg5 + 100)]):
                                                                        if stor1 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 2, 1, ext_call.return_data[0], 1
                                                                        else:
                                                                            if stor2 == address(cd[(arg5 + 132)]):
                                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 2, 2, ext_call.return_data[0], 1
                                                                            else:
                                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 2, 0, ext_call.return_data[0], 1
                                                                    else:
                                                                        if stor1 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, 1, ext_call.return_data[0], 1
                                                                        else:
                                                                            if stor2 == address(cd[(arg5 + 132)]):
                                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 0, 2, ext_call.return_data[0], 1
                                                                            else:
                                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 0, 0, ext_call.return_data[0], 1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                                        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'Contract has not recived Token C'
                                                    else:
                                                        mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                        mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                        mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                        mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                                        mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args stor6, -1
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
                                                        _6040 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                        require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                        _6083 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                        mem[(6 * ceil32(return_data.size)) + 416] = _6083
                                                        require return_data.size >= _6040 + (32 * _6083) + 32
                                                        mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6083] = mem[(4 * ceil32(return_data.size)) + _6040 + 448 len 32 * _6083]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                                        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7255 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_7255] <= 0:
                                                            revert with 0, 'Contract has not recived Token C'
                                else:
                                    if stor1 == address(cd[(arg5 + 100)]):
                                        mem[ceil32(return_data.size) + 356] = 1
                                        mem[ceil32(return_data.size) + 388] = arg3
                                        mem[ceil32(return_data.size) + 420] = 1
                                        require ext_code.size(stor11)
                                        call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining wei
                                            args 0, 1, arg3, 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(return_data.size) + 324] = this.address
                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                        staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'Contract has not recived Token B'
                                        if stor5 == address(cd[(arg5 + 196)]):
                                            mem[(2 * ceil32(return_data.size)) + 320] = 2
                                            mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                            mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                            mem[(2 * ceil32(return_data.size)) + 420] = stor5
                                            mem[(2 * ceil32(return_data.size)) + 452] = -1
                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args stor5, -1
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
                                            _6053 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                            require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                            _6096 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                            require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                            mem[(6 * ceil32(return_data.size)) + 416] = _6096
                                            require return_data.size >= _6053 + (32 * _6096) + 32
                                            mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6096] = mem[(4 * ceil32(return_data.size)) + _6053 + 448 len 32 * _6096]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7268 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_7268] <= 0:
                                                revert with 0, 'Contract has not recived Token C'
                                        else:
                                            if stor6 != address(cd[(arg5 + 196)]):
                                                if stor7 == address(cd[(arg5 + 196)]):
                                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor7, -1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(stor11)
                                                    if stor1 == address(cd[(arg5 + 100)]):
                                                        call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                             gas gas_remaining wei
                                                            args 1, 0, ext_call.return_data[0], 1
                                                    else:
                                                        if stor2 != address(cd[(arg5 + 100)]):
                                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, ext_call.return_data[0], 1
                                                        else:
                                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 1, ext_call.return_data[0], 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if stor8 == address(cd[(arg5 + 196)]):
                                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args stor8, -1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_code.size(stor12)
                                                        if stor1 == address(cd[(arg5 + 100)]):
                                                            if stor1 == address(cd[(arg5 + 132)]):
                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 1, 1, ext_call.return_data[0], 1
                                                            else:
                                                                if stor2 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 1, 2, ext_call.return_data[0], 1
                                                                else:
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 1, 0, ext_call.return_data[0], 1
                                                        else:
                                                            if stor2 == address(cd[(arg5 + 100)]):
                                                                if stor1 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 2, 1, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 2, 2, ext_call.return_data[0], 1
                                                                    else:
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 2, 0, ext_call.return_data[0], 1
                                                            else:
                                                                if stor1 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 1, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 2, ext_call.return_data[0], 1
                                                                    else:
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 0, ext_call.return_data[0], 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                            else:
                                                mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                                mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                require ext_code.size(address(cd[(arg5 + 100)]))
                                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor6, -1
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
                                                _6052 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                _6095 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                mem[(6 * ceil32(return_data.size)) + 416] = _6095
                                                require return_data.size >= _6052 + (32 * _6095) + 32
                                                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6095] = mem[(4 * ceil32(return_data.size)) + _6052 + 448 len 32 * _6095]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7267 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_7267] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                    else:
                                        if stor2 == address(cd[(arg5 + 100)]):
                                            mem[ceil32(return_data.size) + 356] = 2
                                            mem[ceil32(return_data.size) + 388] = arg3
                                            mem[ceil32(return_data.size) + 420] = 1
                                            require ext_code.size(stor11)
                                            call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 2, arg3, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[ceil32(return_data.size) + 324] = this.address
                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                            staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'Contract has not recived Token B'
                                            if stor5 == address(cd[(arg5 + 196)]):
                                                mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                mem[(2 * ceil32(return_data.size)) + 420] = stor5
                                                mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                require ext_code.size(address(cd[(arg5 + 100)]))
                                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args stor5, -1
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
                                                _6051 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                _6094 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                mem[(6 * ceil32(return_data.size)) + 416] = _6094
                                                require return_data.size >= _6051 + (32 * _6094) + 32
                                                mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6094] = mem[(4 * ceil32(return_data.size)) + _6051 + 448 len 32 * _6094]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7266 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_7266] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                            else:
                                                if stor6 != address(cd[(arg5 + 196)]):
                                                    if stor7 == address(cd[(arg5 + 196)]):
                                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args stor7, -1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_code.size(stor11)
                                                        if stor1 == address(cd[(arg5 + 100)]):
                                                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                 gas gas_remaining wei
                                                                args 1, 0, ext_call.return_data[0], 1
                                                        else:
                                                            if stor2 != address(cd[(arg5 + 100)]):
                                                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0, 0, ext_call.return_data[0], 1
                                                            else:
                                                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0, 1, ext_call.return_data[0], 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if stor8 == address(cd[(arg5 + 196)]):
                                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args stor8, -1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            require ext_code.size(stor12)
                                                            if stor1 == address(cd[(arg5 + 100)]):
                                                                if stor1 == address(cd[(arg5 + 132)]):
                                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 1, 1, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor2 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 1, 2, ext_call.return_data[0], 1
                                                                    else:
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 1, 0, ext_call.return_data[0], 1
                                                            else:
                                                                if stor2 == address(cd[(arg5 + 100)]):
                                                                    if stor1 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 2, 1, ext_call.return_data[0], 1
                                                                    else:
                                                                        if stor2 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 2, 2, ext_call.return_data[0], 1
                                                                        else:
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 2, 0, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor1 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, 1, ext_call.return_data[0], 1
                                                                    else:
                                                                        if stor2 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, 2, ext_call.return_data[0], 1
                                                                        else:
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, 0, ext_call.return_data[0], 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                                                else:
                                                    mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                    mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                    mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                    mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                                    mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor6, -1
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
                                                    _6050 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                    require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                    _6093 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                    mem[(6 * ceil32(return_data.size)) + 416] = _6093
                                                    require return_data.size >= _6050 + (32 * _6093) + 32
                                                    mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6093] = mem[(4 * ceil32(return_data.size)) + _6050 + 448 len 32 * _6093]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7265 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_7265] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                                        else:
                                            mem[ceil32(return_data.size) + 356] = 0
                                            mem[ceil32(return_data.size) + 388] = arg3
                                            mem[ceil32(return_data.size) + 420] = 1
                                            require ext_code.size(stor11)
                                            call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 0, 0, arg3, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[ceil32(return_data.size) + 324] = this.address
                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                            staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'Contract has not recived Token B'
                                            if stor3 != address(cd[(arg5 + 100)]):
                                                if stor5 == address(cd[(arg5 + 196)]):
                                                    mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                    mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                    mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                    mem[(2 * ceil32(return_data.size)) + 420] = stor5
                                                    mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor5, -1
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
                                                    _6047 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                    require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                    _6090 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                    mem[(6 * ceil32(return_data.size)) + 416] = _6090
                                                    require return_data.size >= _6047 + (32 * _6090) + 32
                                                    mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6090] = mem[(4 * ceil32(return_data.size)) + _6047 + 448 len 32 * _6090]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7262 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_7262] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                                                else:
                                                    if stor6 != address(cd[(arg5 + 196)]):
                                                        if stor7 == address(cd[(arg5 + 196)]):
                                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args stor7, -1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            require ext_code.size(stor11)
                                                            if stor1 == address(cd[(arg5 + 100)]):
                                                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 1, 0, ext_call.return_data[0], 1
                                                            else:
                                                                if stor2 != address(cd[(arg5 + 100)]):
                                                                    call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0, ext_call.return_data[0], 1
                                                                else:
                                                                    call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 1, ext_call.return_data[0], 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if stor8 == address(cd[(arg5 + 196)]):
                                                                require ext_code.size(address(cd[(arg5 + 100)]))
                                                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                                     gas gas_remaining wei
                                                                    args stor8, -1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                require ext_code.size(stor12)
                                                                if stor1 == address(cd[(arg5 + 100)]):
                                                                    if stor1 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 1, 1, ext_call.return_data[0], 1
                                                                    else:
                                                                        if stor2 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 1, 2, ext_call.return_data[0], 1
                                                                        else:
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 1, 0, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor2 == address(cd[(arg5 + 100)]):
                                                                        if stor1 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 2, 1, ext_call.return_data[0], 1
                                                                        else:
                                                                            if stor2 == address(cd[(arg5 + 132)]):
                                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 2, 2, ext_call.return_data[0], 1
                                                                            else:
                                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 2, 0, ext_call.return_data[0], 1
                                                                    else:
                                                                        if stor1 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, 1, ext_call.return_data[0], 1
                                                                        else:
                                                                            if stor2 == address(cd[(arg5 + 132)]):
                                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 0, 2, ext_call.return_data[0], 1
                                                                            else:
                                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 0, 0, ext_call.return_data[0], 1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                                        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'Contract has not recived Token C'
                                                    else:
                                                        mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                        mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                        mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                        mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                                        mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args stor6, -1
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
                                                        _6046 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                        require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                        _6089 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                        mem[(6 * ceil32(return_data.size)) + 416] = _6089
                                                        require return_data.size >= _6046 + (32 * _6089) + 32
                                                        mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6089] = mem[(4 * ceil32(return_data.size)) + _6046 + 448 len 32 * _6089]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                                        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7261 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_7261] <= 0:
                                                            revert with 0, 'Contract has not recived Token C'
                                            else:
                                                if stor5 == address(cd[(arg5 + 196)]):
                                                    mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                    mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                    mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                    mem[(2 * ceil32(return_data.size)) + 420] = stor5
                                                    mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                    require ext_code.size(address(cd[(arg5 + 100)]))
                                                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args stor5, -1
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
                                                    _6049 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                    require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                    _6092 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                    mem[(6 * ceil32(return_data.size)) + 416] = _6092
                                                    require return_data.size >= _6049 + (32 * _6092) + 32
                                                    mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6092] = mem[(4 * ceil32(return_data.size)) + _6049 + 448 len 32 * _6092]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7264 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_7264] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                                                else:
                                                    if stor6 != address(cd[(arg5 + 196)]):
                                                        if stor7 == address(cd[(arg5 + 196)]):
                                                            require ext_code.size(address(cd[(arg5 + 100)]))
                                                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args stor7, -1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            require ext_code.size(stor11)
                                                            if stor1 == address(cd[(arg5 + 100)]):
                                                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                     gas gas_remaining wei
                                                                    args 1, 0, ext_call.return_data[0], 1
                                                            else:
                                                                if stor2 != address(cd[(arg5 + 100)]):
                                                                    call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 0, ext_call.return_data[0], 1
                                                                else:
                                                                    call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                         gas gas_remaining wei
                                                                        args 0, 1, ext_call.return_data[0], 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if stor8 == address(cd[(arg5 + 196)]):
                                                                require ext_code.size(address(cd[(arg5 + 100)]))
                                                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                                     gas gas_remaining wei
                                                                    args stor8, -1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                require ext_code.size(stor12)
                                                                if stor1 == address(cd[(arg5 + 100)]):
                                                                    if stor1 == address(cd[(arg5 + 132)]):
                                                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                             gas gas_remaining wei
                                                                            args 1, 1, ext_call.return_data[0], 1
                                                                    else:
                                                                        if stor2 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 1, 2, ext_call.return_data[0], 1
                                                                        else:
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 1, 0, ext_call.return_data[0], 1
                                                                else:
                                                                    if stor2 == address(cd[(arg5 + 100)]):
                                                                        if stor1 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 2, 1, ext_call.return_data[0], 1
                                                                        else:
                                                                            if stor2 == address(cd[(arg5 + 132)]):
                                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 2, 2, ext_call.return_data[0], 1
                                                                            else:
                                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 2, 0, ext_call.return_data[0], 1
                                                                    else:
                                                                        if stor1 == address(cd[(arg5 + 132)]):
                                                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, 1, ext_call.return_data[0], 1
                                                                        else:
                                                                            if stor2 == address(cd[(arg5 + 132)]):
                                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 0, 2, ext_call.return_data[0], 1
                                                                            else:
                                                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args 0, 0, ext_call.return_data[0], 1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                                        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'Contract has not recived Token C'
                                                    else:
                                                        mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                        mem[(2 * ceil32(return_data.size)) + 352] = address(cd[(arg5 + 100)])
                                                        mem[(2 * ceil32(return_data.size)) + 384] = address(cd[(arg5 + 132)])
                                                        mem[(2 * ceil32(return_data.size)) + 420] = stor6
                                                        mem[(2 * ceil32(return_data.size)) + 452] = -1
                                                        require ext_code.size(address(cd[(arg5 + 100)]))
                                                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args stor6, -1
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
                                                        _6048 = mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                                        require mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
                                                        _6091 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                                        mem[(6 * ceil32(return_data.size)) + 416] = _6091
                                                        require return_data.size >= _6048 + (32 * _6091) + 32
                                                        mem[(6 * ceil32(return_data.size)) + 448 len 32 * _6091] = mem[(4 * ceil32(return_data.size)) + _6048 + 448 len 32 * _6091]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                                        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7263 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_7263] <= 0:
                                                            revert with 0, 'Contract has not recived Token C'
            else:
                mem[320] = 2
                mem[352] = address(cd[(arg5 + 68)])
                mem[384] = address(cd[(arg5 + 100)])
                mem[420] = stor6
                mem[452] = -1
                require ext_code.size(address(cd[(arg5 + 68)]))
                call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor6, -1
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
                _6076 = mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32
                require mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 447 < ceil32(return_data.size) + return_data.size + 416
                _6119 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416] <= test266151307()
                require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 448 <= test266151307()
                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 448
                mem[(2 * ceil32(return_data.size)) + 416] = _6119
                require return_data.size >= _6076 + (32 * _6119) + 32
                mem[(2 * ceil32(return_data.size)) + 448 len 32 * _6119] = mem[ceil32(return_data.size) + _6076 + 448 len 32 * _6119]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 100)]))
                staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7291 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7334 = mem[_7291]
                if mem[_7291] <= 0:
                    revert with 0, 'Contract has not recived Token B'
                if stor5 != address(cd[(arg5 + 196)]):
                    if stor6 != address(cd[(arg5 + 196)]):
                        if stor7 == address(cd[(arg5 + 196)]):
                            mem[mem[64] + 4] = stor7
                            mem[mem[64] + 36] = -1
                            require ext_code.size(address(cd[(arg5 + 100)]))
                            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args stor7, -1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7538 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7538] == bool(mem[_7538])
                            if stor1 == address(cd[(arg5 + 100)]):
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = _7334
                                mem[mem[64] + 100] = 1
                                require ext_code.size(stor11)
                                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args 1, 0, _7334, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[(arg5 + 132)]))
                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7706 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7706] <= 0:
                                    revert with 0, 'Contract has not recived Token C'
                            else:
                                if stor2 != address(cd[(arg5 + 100)]):
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = _7334
                                    mem[mem[64] + 100] = 1
                                    require ext_code.size(stor11)
                                    call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, _7334, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7705 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7705] <= 0:
                                        revert with 0, 'Contract has not recived Token C'
                                else:
                                    mem[mem[64] + 36] = 1
                                    mem[mem[64] + 68] = _7334
                                    mem[mem[64] + 100] = 1
                                    require ext_code.size(stor11)
                                    call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args 0, 1, _7334, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7727 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7727] <= 0:
                                        revert with 0, 'Contract has not recived Token C'
                        else:
                            if stor8 != address(cd[(arg5 + 196)]):
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[(arg5 + 132)]))
                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7542 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7542] <= 0:
                                    revert with 0, 'Contract has not recived Token C'
                            else:
                                mem[mem[64] + 4] = stor8
                                mem[mem[64] + 36] = -1
                                require ext_code.size(address(cd[(arg5 + 100)]))
                                call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args stor8, -1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7543 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7543] == bool(mem[_7543])
                                if stor1 == address(cd[(arg5 + 100)]):
                                    if stor1 == address(cd[(arg5 + 132)]):
                                        mem[mem[64] + 36] = 1
                                        mem[mem[64] + 68] = _7334
                                        mem[mem[64] + 100] = 1
                                        require ext_code.size(stor12)
                                        call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining wei
                                            args 1, 1, _7334, 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(cd[(arg5 + 132)]))
                                        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7769 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_7769] <= 0:
                                            revert with 0, 'Contract has not recived Token C'
                                    else:
                                        if stor2 == address(cd[(arg5 + 132)]):
                                            mem[mem[64] + 36] = 2
                                            mem[mem[64] + 68] = _7334
                                            mem[mem[64] + 100] = 1
                                            require ext_code.size(stor12)
                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 1, 2, _7334, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7787 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_7787] <= 0:
                                                revert with 0, 'Contract has not recived Token C'
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = _7334
                                            mem[mem[64] + 100] = 1
                                            require ext_code.size(stor12)
                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 1, 0, _7334, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if stor3 != address(cd[(arg5 + 132)]):
                                                _7786 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_7786] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                            else:
                                                _7808 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_7808] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                else:
                                    if stor2 == address(cd[(arg5 + 100)]):
                                        if stor1 == address(cd[(arg5 + 132)]):
                                            mem[mem[64] + 36] = 1
                                            mem[mem[64] + 68] = _7334
                                            mem[mem[64] + 100] = 1
                                            require ext_code.size(stor12)
                                            call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining wei
                                                args 2, 1, _7334, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[(arg5 + 132)]))
                                            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7785 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_7785] <= 0:
                                                revert with 0, 'Contract has not recived Token C'
                                        else:
                                            if stor2 == address(cd[(arg5 + 132)]):
                                                mem[mem[64] + 36] = 2
                                                mem[mem[64] + 68] = _7334
                                                mem[mem[64] + 100] = 1
                                                require ext_code.size(stor12)
                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 2, 2, _7334, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7807 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_7807] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = _7334
                                                mem[mem[64] + 100] = 1
                                                require ext_code.size(stor12)
                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 2, 0, _7334, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if stor3 != address(cd[(arg5 + 132)]):
                                                    _7806 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_7806] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                                                else:
                                                    _7824 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_7824] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                                    else:
                                        if stor3 != address(cd[(arg5 + 100)]):
                                            if stor1 == address(cd[(arg5 + 132)]):
                                                mem[mem[64] + 36] = 1
                                                mem[mem[64] + 68] = _7334
                                                mem[mem[64] + 100] = 1
                                                require ext_code.size(stor12)
                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 1, _7334, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7781 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_7781] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                            else:
                                                if stor2 == address(cd[(arg5 + 132)]):
                                                    mem[mem[64] + 36] = 2
                                                    mem[mem[64] + 68] = _7334
                                                    mem[mem[64] + 100] = 1
                                                    require ext_code.size(stor12)
                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 2, _7334, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7803 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_7803] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                                                else:
                                                    mem[mem[64] + 36] = 0
                                                    mem[mem[64] + 68] = _7334
                                                    mem[mem[64] + 100] = 1
                                                    require ext_code.size(stor12)
                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, _7334, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if stor3 != address(cd[(arg5 + 132)]):
                                                        _7802 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_7802] <= 0:
                                                            revert with 0, 'Contract has not recived Token C'
                                                    else:
                                                        _7820 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_7820] <= 0:
                                                            revert with 0, 'Contract has not recived Token C'
                                        else:
                                            if stor1 == address(cd[(arg5 + 132)]):
                                                mem[mem[64] + 36] = 1
                                                mem[mem[64] + 68] = _7334
                                                mem[mem[64] + 100] = 1
                                                require ext_code.size(stor12)
                                                call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                     gas gas_remaining wei
                                                    args 0, 1, _7334, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[(arg5 + 132)]))
                                                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7805 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_7805] <= 0:
                                                    revert with 0, 'Contract has not recived Token C'
                                            else:
                                                if stor2 == address(cd[(arg5 + 132)]):
                                                    mem[mem[64] + 36] = 2
                                                    mem[mem[64] + 68] = _7334
                                                    mem[mem[64] + 100] = 1
                                                    require ext_code.size(stor12)
                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 2, _7334, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7823 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    if mem[_7823] <= 0:
                                                        revert with 0, 'Contract has not recived Token C'
                                                else:
                                                    mem[mem[64] + 36] = 0
                                                    mem[mem[64] + 68] = _7334
                                                    mem[mem[64] + 100] = 1
                                                    require ext_code.size(stor12)
                                                    call stor12.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, _7334, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(cd[(arg5 + 132)]))
                                                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if stor3 != address(cd[(arg5 + 132)]):
                                                        _7822 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_7822] <= 0:
                                                            revert with 0, 'Contract has not recived Token C'
                                                    else:
                                                        _7846 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        if mem[_7846] <= 0:
                                                            revert with 0, 'Contract has not recived Token C'
                    else:
                        _7426 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_7426]
                        mem[_7426 + 32] = address(cd[(arg5 + 100)])
                        require 1 < mem[_7426]
                        mem[_7426 + 64] = address(cd[(arg5 + 132)])
                        mem[_7426 + 100] = stor6
                        mem[_7426 + 132] = -1
                        require ext_code.size(address(cd[(arg5 + 100)]))
                        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args stor6, -1
                        mem[_7426 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _7426 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[_7426 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_7426 + ceil32(return_data.size) + 100] = _7334
                        mem[_7426 + ceil32(return_data.size) + 132] = 1
                        mem[_7426 + ceil32(return_data.size) + 164] = 160
                        mem[_7426 + ceil32(return_data.size) + 260] = mem[_7426]
                        idx = 0
                        s = _7426 + ceil32(return_data.size) + 292
                        t = _7426 + 32
                        while idx < mem[_7426]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_7426 + ceil32(return_data.size) + 196] = this.address
                        mem[_7426 + ceil32(return_data.size) + 228] = block.timestamp + 1
                        require ext_code.size(address(cd[(arg5 + 196)]))
                        call address(cd[(arg5 + 196)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args _7334, 1, 160, address(this.address), block.timestamp + 1, mem[_7426 + ceil32(return_data.size) + 260 len (32 * mem[_7426]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_7426 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _7426 + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _8098 = mem[_7426 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7334) >> 32
                        require mem[_7426 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7334) >> 32 <= test266151307()
                        require _7426 + ceil32(return_data.size) + mem[_7426 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7334) >> 32 + 127 < _7426 + ceil32(return_data.size) + return_data.size + 96
                        _8104 = mem[_7426 + ceil32(return_data.size) + mem[_7426 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7334) >> 32 + 96]
                        require mem[_7426 + ceil32(return_data.size) + mem[_7426 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7334) >> 32 + 96] <= test266151307()
                        require (32 * mem[_7426 + ceil32(return_data.size) + mem[_7426 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7334) >> 32 + 96]) + 32 >= 0 and _7426 + (2 * ceil32(return_data.size)) + (32 * mem[_7426 + ceil32(return_data.size) + mem[_7426 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7334) >> 32 + 96]) + 128 <= test266151307()
                        mem[64] = _7426 + (2 * ceil32(return_data.size)) + (32 * mem[_7426 + ceil32(return_data.size) + mem[_7426 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7334) >> 32 + 96]) + 128
                        mem[_7426 + (2 * ceil32(return_data.size)) + 96] = _8104
                        require return_data.size >= _8098 + (32 * _8104) + 32
                        mem[_7426 + (2 * ceil32(return_data.size)) + 128 len 32 * _8104] = mem[_7426 + ceil32(return_data.size) + _8098 + 128 len 32 * _8104]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[(arg5 + 132)]))
                        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8188 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_8188] <= 0:
                            revert with 0, 'Contract has not recived Token C'
                else:
                    _7382 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_7382]
                    mem[_7382 + 32] = address(cd[(arg5 + 100)])
                    require 1 < mem[_7382]
                    mem[_7382 + 64] = address(cd[(arg5 + 132)])
                    mem[_7382 + 100] = stor5
                    mem[_7382 + 132] = -1
                    require ext_code.size(address(cd[(arg5 + 100)]))
                    call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[_7382 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7382 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_7382 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_7382 + ceil32(return_data.size) + 100] = _7334
                    mem[_7382 + ceil32(return_data.size) + 132] = 1
                    mem[_7382 + ceil32(return_data.size) + 164] = 160
                    mem[_7382 + ceil32(return_data.size) + 260] = mem[_7382]
                    idx = 0
                    s = _7382 + ceil32(return_data.size) + 292
                    t = _7382 + 32
                    while idx < mem[_7382]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_7382 + ceil32(return_data.size) + 196] = this.address
                    mem[_7382 + ceil32(return_data.size) + 228] = block.timestamp + 1
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    call address(cd[(arg5 + 196)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _7382 + ceil32(return_data.size) + (32 * mem[_7382]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8093 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _8099 = mem[_8093]
                    require mem[_8093] <= test266151307()
                    require _8093 + mem[_8093] + 31 < _8093 + return_data.size
                    _8105 = mem[_8093 + mem[_8093]]
                    require mem[_8093 + mem[_8093]] <= test266151307()
                    require (32 * mem[_8093 + mem[_8093]]) + 32 >= 0 and _8093 + ceil32(return_data.size) + (32 * mem[_8093 + mem[_8093]]) + 32 <= test266151307()
                    mem[64] = _8093 + ceil32(return_data.size) + (32 * mem[_8093 + mem[_8093]]) + 32
                    mem[_8093 + ceil32(return_data.size)] = _8105
                    require return_data.size >= _8099 + (32 * _8105) + 32
                    mem[_8093 + ceil32(return_data.size) + 32 len 32 * _8105] = mem[_8093 + _8099 + 32 len 32 * _8105]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 132)]))
                    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8189 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_8189] <= 0:
                        revert with 0, 'Contract has not recived Token C'
    else:
        if not cd[(arg5 + 36)]:
            mem[320] = 2
            mem[352] = arg2
            mem[384] = address(cd[(arg5 + 100)])
            mem[420] = stor6
            mem[452] = arg3
            require ext_code.size(arg2)
            call arg2.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor6, arg3
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
            require ext_code.size(stor9)
            call stor9.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 1, Array(len=2, data=mem[ceil32(return_data.size) + 612 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 416
            require return_data.size >= 32
            _6035 = mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 447 < ceil32(return_data.size) + return_data.size + 416
            _6078 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416] <= test266151307()
            require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 448 <= test266151307()
            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 448
            mem[(2 * ceil32(return_data.size)) + 416] = _6078
            require return_data.size >= _6035 + (32 * _6078) + 32
            mem[(2 * ceil32(return_data.size)) + 448 len 32 * _6078] = mem[ceil32(return_data.size) + _6035 + 448 len 32 * _6078]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 100)]))
            staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7250 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _7293 = mem[_7250]
            if mem[_7250] <= 0:
                revert with 0, 'Contract has not recived Token B'
            mem[mem[64] + 4] = stor7
            mem[mem[64] + 36] = -1
            require ext_code.size(address(cd[(arg5 + 100)]))
            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor7, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7434 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_7434] == bool(mem[_7434])
            if stor1 == address(cd[(arg5 + 100)]):
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = _7293
                mem[mem[64] + 100] = 1
                require ext_code.size(stor11)
                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 0, 1, _7293, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 132)]))
                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7605 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7637 = mem[_7605]
                if mem[_7605] <= 0:
                    revert with 0, 'Contract has not recived Token C'
                _7681 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_7681]
                mem[_7681 + 32] = address(cd[(arg5 + 132)])
                require 1 < mem[_7681]
                mem[_7681 + 64] = arg2
                mem[_7681 + 100] = stor6
                mem[_7681 + 132] = -1
                require ext_code.size(address(cd[(arg5 + 132)]))
                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor6, -1
                mem[_7681 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _7681 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[_7681 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_7681 + ceil32(return_data.size) + 100] = _7637
                mem[_7681 + ceil32(return_data.size) + 132] = 1
                mem[_7681 + ceil32(return_data.size) + 164] = 160
                mem[_7681 + ceil32(return_data.size) + 260] = mem[_7681]
                idx = 0
                s = _7681 + ceil32(return_data.size) + 292
                t = _7681 + 32
                while idx < mem[_7681]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_7681 + ceil32(return_data.size) + 196] = this.address
                mem[_7681 + ceil32(return_data.size) + 228] = block.timestamp + 1
                require ext_code.size(stor9)
                call stor9.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _7637, 1, 160, address(this.address), block.timestamp + 1, mem[_7681 + ceil32(return_data.size) + 260 len (32 * mem[_7681]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_7681 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _7681 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _8097 = mem[_7681 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7637) >> 32
                require mem[_7681 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7637) >> 32 <= test266151307()
                require _7681 + ceil32(return_data.size) + mem[_7681 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7637) >> 32 + 127 < _7681 + ceil32(return_data.size) + return_data.size + 96
                _8103 = mem[_7681 + ceil32(return_data.size) + mem[_7681 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7637) >> 32 + 96]
                require mem[_7681 + ceil32(return_data.size) + mem[_7681 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7637) >> 32 + 96] <= test266151307()
                require (32 * mem[_7681 + ceil32(return_data.size) + mem[_7681 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7637) >> 32 + 96]) + 32 >= 0 and _7681 + (2 * ceil32(return_data.size)) + (32 * mem[_7681 + ceil32(return_data.size) + mem[_7681 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7637) >> 32 + 96]) + 128 <= test266151307()
                mem[64] = _7681 + (2 * ceil32(return_data.size)) + (32 * mem[_7681 + ceil32(return_data.size) + mem[_7681 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _7637) >> 32 + 96]) + 128
                mem[_7681 + (2 * ceil32(return_data.size)) + 96] = _8103
                require return_data.size >= _8097 + (32 * _8103) + 32
                mem[_7681 + (2 * ceil32(return_data.size)) + 128 len 32 * _8103] = mem[_7681 + ceil32(return_data.size) + _8097 + 128 len 32 * _8103]
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8187 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_8187] <= 0:
                    revert with 0, 'Contract has not recived Token A'
            else:
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = _7293
                mem[mem[64] + 100] = 1
                require ext_code.size(stor11)
                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 1, 0, _7293, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 132)]))
                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7604 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7636 = mem[_7604]
                if mem[_7604] <= 0:
                    revert with 0, 'Contract has not recived Token C'
                _7678 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_7678]
                mem[_7678 + 32] = address(cd[(arg5 + 132)])
                require 1 < mem[_7678]
                mem[_7678 + 64] = arg2
                mem[_7678 + 100] = stor6
                mem[_7678 + 132] = -1
                require ext_code.size(address(cd[(arg5 + 132)]))
                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor6, -1
                mem[_7678 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _7678 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[_7678 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_7678 + ceil32(return_data.size) + 100] = _7636
                mem[_7678 + ceil32(return_data.size) + 132] = 1
                mem[_7678 + ceil32(return_data.size) + 164] = 160
                mem[_7678 + ceil32(return_data.size) + 260] = mem[_7678]
                idx = 0
                s = _7678 + ceil32(return_data.size) + 292
                t = _7678 + 32
                while idx < mem[_7678]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_7678 + ceil32(return_data.size) + 196] = this.address
                mem[_7678 + ceil32(return_data.size) + 228] = block.timestamp + 1
                require ext_code.size(stor9)
                call stor9.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _7678 + ceil32(return_data.size) + (32 * mem[_7678]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8090 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _8096 = mem[_8090]
                require mem[_8090] <= test266151307()
                require _8090 + mem[_8090] + 31 < _8090 + return_data.size
                _8102 = mem[_8090 + mem[_8090]]
                require mem[_8090 + mem[_8090]] <= test266151307()
                require (32 * mem[_8090 + mem[_8090]]) + 32 >= 0 and _8090 + ceil32(return_data.size) + (32 * mem[_8090 + mem[_8090]]) + 32 <= test266151307()
                mem[64] = _8090 + ceil32(return_data.size) + (32 * mem[_8090 + mem[_8090]]) + 32
                mem[_8090 + ceil32(return_data.size)] = _8102
                require return_data.size >= _8096 + (32 * _8102) + 32
                mem[_8090 + ceil32(return_data.size) + 32 len 32 * _8102] = mem[_8090 + _8096 + 32 len 32 * _8102]
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8186 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_8186] <= 0:
                    revert with 0, 'Contract has not recived Token A'
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}



}
