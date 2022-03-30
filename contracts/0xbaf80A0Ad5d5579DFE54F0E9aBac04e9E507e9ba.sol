contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;

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
    staticcall arg1.balanceOf(address rg1) with:
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
    staticcall arg1.balanceOf(address rg1) with:
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
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_70dcf194(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg5 == bool(arg5)
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(address(arg1))
    staticcall address(arg1).allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    staticcall stor6.flashFee(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg1), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor6, (2 * ext_call.return_data[0]) + arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor6)
    call stor6.flashLoan(address rg1, address rg2, uint256 rg3, bytes rg4) with:
         gas gas_remaining wei
        args address(this.address), address(arg1), arg4, 128, 128, bool(arg5), address(arg1), address(arg2), address(arg3)
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
    if stor6 != msg.sender:
        revert with 0, 'FlashBorrower: Untrusted lender'
    if arg1 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FlashBorrower: Untrusted loan initiator'
    require arg5.length >= 128
    require cd[(arg5 + 36)] == bool(cd[(arg5 + 36)])
    mem[96] = cd[(arg5 + 36)]
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    mem[128] = cd[(arg5 + 68)]
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    mem[160] = cd[(arg5 + 100)]
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    mem[192] = cd[(arg5 + 132)]
    if 1 == bool(cd[(arg5 + 36)]):
        mem[224] = 2
        mem[256] = address(cd[(arg5 + 68)])
        mem[288] = address(cd[(arg5 + 100)])
        mem[324] = stor1
        mem[356] = -1
        require ext_code.size(address(cd[(arg5 + 68)]))
        call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor1, -1
        mem[320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 324] = arg3
        mem[ceil32(return_data.size) + 356] = 1
        mem[ceil32(return_data.size) + 388] = 160
        mem[ceil32(return_data.size) + 484] = 2
        idx = 0
        s = ceil32(return_data.size) + 516
        t = 256
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 420] = this.address
        mem[ceil32(return_data.size) + 452] = block.timestamp + 1
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 1, Array(len=2, data=mem[ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _158 = mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < ceil32(return_data.size) + return_data.size + 320
        _160 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
        mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
        require return_data.size >= _158 + (32 * _160) + 32
        mem[(2 * ceil32(return_data.size)) + 352 len 32 * _160] = mem[ceil32(return_data.size) + _158 + 352 len 32 * _160]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 100)]))
        staticcall address(cd[(arg5 + 100)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _276 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _278 = mem[_276]
        if mem[_276] <= 0:
            revert with 0, 'Contract has not recived Token B'
        mem[mem[64] + 4] = stor2
        mem[mem[64] + 36] = -1
        require ext_code.size(address(cd[(arg5 + 100)]))
        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor2, -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _288 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_288] == bool(mem[_288])
        if stor3 != address(cd[(arg5 + 68)]):
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = _278
            mem[mem[64] + 100] = 1
            require ext_code.size(stor5)
            call stor5.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 1, _278, 1
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
            _309 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_309] <= 0:
                revert with 0, 'Contract has not recived Token A'
        else:
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = _278
            mem[mem[64] + 100] = 1
            require ext_code.size(stor5)
            call stor5.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 1, 0, _278, 1
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
            _310 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_310] <= 0:
                revert with 0, 'Contract has not recived Token A'
    else:
        if not cd[(arg5 + 36)]:
            mem[224] = 2
            mem[256] = address(cd[(arg5 + 68)])
            mem[288] = address(cd[(arg5 + 100)])
            mem[324] = stor1
            mem[356] = arg3
            require ext_code.size(address(cd[(arg5 + 68)]))
            call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor1, arg3
            mem[320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 324] = arg3
            mem[ceil32(return_data.size) + 356] = 1
            mem[ceil32(return_data.size) + 388] = 160
            mem[ceil32(return_data.size) + 484] = 2
            idx = 0
            s = ceil32(return_data.size) + 516
            t = 256
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 420] = this.address
            mem[ceil32(return_data.size) + 452] = block.timestamp + 1
            require ext_code.size(stor4)
            call stor4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 1, Array(len=2, data=mem[ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _157 = mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < ceil32(return_data.size) + return_data.size + 320
            _159 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
            require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
            mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            require return_data.size >= _157 + (32 * _159) + 32
            mem[(2 * ceil32(return_data.size)) + 352 len 32 * _159] = mem[ceil32(return_data.size) + _157 + 352 len 32 * _159]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 100)]))
            staticcall address(cd[(arg5 + 100)]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _275 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _277 = mem[_275]
            if mem[_275] <= 0:
                revert with 0, 'Contract has not recived Token B'
            mem[mem[64] + 4] = stor2
            mem[mem[64] + 36] = -1
            require ext_code.size(address(cd[(arg5 + 100)]))
            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor2, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _287 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_287] == bool(mem[_287])
            if stor3 == address(cd[(arg5 + 100)]):
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = _277
                mem[mem[64] + 100] = 1
                require ext_code.size(stor5)
                call stor5.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 0, 1, _277, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 132)]))
                staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _308 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _312 = mem[_308]
                if mem[_308] <= 0:
                    revert with 0, 'Contract has not recived Token C'
                _318 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_318]
                mem[_318 + 32] = address(cd[(arg5 + 132)])
                require 1 < mem[_318]
                mem[_318 + 64] = address(cd[(arg5 + 68)])
                mem[_318 + 100] = stor1
                mem[_318 + 132] = -1
                require ext_code.size(address(cd[(arg5 + 132)]))
                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor1, -1
                mem[_318 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _318 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[_318 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_318 + ceil32(return_data.size) + 100] = _312
                mem[_318 + ceil32(return_data.size) + 132] = 1
                mem[_318 + ceil32(return_data.size) + 164] = 160
                mem[_318 + ceil32(return_data.size) + 260] = mem[_318]
                idx = 0
                s = _318 + ceil32(return_data.size) + 292
                t = _318 + 32
                while idx < mem[_318]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_318 + ceil32(return_data.size) + 196] = this.address
                mem[_318 + ceil32(return_data.size) + 228] = block.timestamp + 1
                require ext_code.size(stor4)
                call stor4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _312, 1, 160, address(this.address), block.timestamp + 1, mem[_318 + ceil32(return_data.size) + 260 len (32 * mem[_318]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_318 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _318 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _382 = mem[_318 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _312) >> 32
                require mem[_318 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _312) >> 32 <= test266151307()
                require _318 + ceil32(return_data.size) + mem[_318 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _312) >> 32 + 127 < _318 + ceil32(return_data.size) + return_data.size + 96
                _384 = mem[_318 + ceil32(return_data.size) + mem[_318 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _312) >> 32 + 96]
                require mem[_318 + ceil32(return_data.size) + mem[_318 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _312) >> 32 + 96] <= test266151307()
                require (32 * mem[_318 + ceil32(return_data.size) + mem[_318 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _312) >> 32 + 96]) + 32 >= 0 and _318 + (2 * ceil32(return_data.size)) + (32 * mem[_318 + ceil32(return_data.size) + mem[_318 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _312) >> 32 + 96]) + 128 <= test266151307()
                mem[64] = _318 + (2 * ceil32(return_data.size)) + (32 * mem[_318 + ceil32(return_data.size) + mem[_318 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _312) >> 32 + 96]) + 128
                mem[_318 + (2 * ceil32(return_data.size)) + 96] = mem[_318 + ceil32(return_data.size) + mem[_318 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _312) >> 32 + 96]
                require return_data.size >= _382 + (32 * _384) + 32
                mem[_318 + (2 * ceil32(return_data.size)) + 128 len 32 * _384] = mem[_318 + ceil32(return_data.size) + _382 + 128 len 32 * _384]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 68)]))
                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _412 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_412] <= 0:
                    revert with 0, 'Contract has not recived Token A'
            else:
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = _277
                mem[mem[64] + 100] = 1
                require ext_code.size(stor5)
                call stor5.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 1, 0, _277, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 132)]))
                staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _307 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _311 = mem[_307]
                if mem[_307] <= 0:
                    revert with 0, 'Contract has not recived Token C'
                _315 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_315]
                mem[_315 + 32] = address(cd[(arg5 + 132)])
                require 1 < mem[_315]
                mem[_315 + 64] = address(cd[(arg5 + 68)])
                mem[_315 + 100] = stor1
                mem[_315 + 132] = -1
                require ext_code.size(address(cd[(arg5 + 132)]))
                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor1, -1
                mem[_315 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _315 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[_315 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_315 + ceil32(return_data.size) + 100] = _311
                mem[_315 + ceil32(return_data.size) + 132] = 1
                mem[_315 + ceil32(return_data.size) + 164] = 160
                mem[_315 + ceil32(return_data.size) + 260] = mem[_315]
                idx = 0
                s = _315 + ceil32(return_data.size) + 292
                t = _315 + 32
                while idx < mem[_315]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_315 + ceil32(return_data.size) + 196] = this.address
                mem[_315 + ceil32(return_data.size) + 228] = block.timestamp + 1
                require ext_code.size(stor4)
                call stor4.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _315 + ceil32(return_data.size) + (32 * mem[_315]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _379 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _381 = mem[_379]
                require mem[_379] <= test266151307()
                require _379 + mem[_379] + 31 < _379 + return_data.size
                _383 = mem[_379 + mem[_379]]
                require mem[_379 + mem[_379]] <= test266151307()
                require (32 * mem[_379 + mem[_379]]) + 32 >= 0 and _379 + ceil32(return_data.size) + (32 * mem[_379 + mem[_379]]) + 32 <= test266151307()
                mem[64] = _379 + ceil32(return_data.size) + (32 * mem[_379 + mem[_379]]) + 32
                mem[_379 + ceil32(return_data.size)] = _383
                require return_data.size >= _381 + (32 * _383) + 32
                mem[_379 + ceil32(return_data.size) + 32 len 32 * _383] = mem[_379 + _381 + 32 len 32 * _383]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 68)]))
                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _411 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_411] <= 0:
                    revert with 0, 'Contract has not recived Token A'
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}



}
