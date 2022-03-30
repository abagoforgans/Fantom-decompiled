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
        if owner != msg.sender:
            revert with 0, 'sOwnable: caller is not the owne'
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
        _166 = mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < ceil32(return_data.size) + return_data.size + 320
        _168 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
        mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
        require return_data.size >= _166 + (32 * _168) + 32
        mem[(2 * ceil32(return_data.size)) + 352 len 32 * _168] = mem[ceil32(return_data.size) + _166 + 352 len 32 * _168]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 100)]))
        staticcall address(cd[(arg5 + 100)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _284 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _286 = mem[_284]
        if mem[_284] <= 0:
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
        _296 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_296] == bool(mem[_296])
        if stor3 != address(cd[(arg5 + 68)]):
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = _286
            mem[mem[64] + 100] = 1
            require ext_code.size(stor5)
            call stor5.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 0, 1, _286, 1
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
            _317 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_317] <= 0:
                revert with 0, 'Contract has not recived Token A'
        else:
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = _286
            mem[mem[64] + 100] = 1
            require ext_code.size(stor5)
            call stor5.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args 1, 0, _286, 1
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
            _318 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_318] <= 0:
                revert with 0, 'Contract has not recived Token A'
    else:
        if not cd[(arg5 + 36)]:
            if owner != msg.sender:
                revert with 0, 'sOwnable: caller is not the owne'
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
            _165 = mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < ceil32(return_data.size) + return_data.size + 320
            _167 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
            require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307()
            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
            mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            require return_data.size >= _165 + (32 * _167) + 32
            mem[(2 * ceil32(return_data.size)) + 352 len 32 * _167] = mem[ceil32(return_data.size) + _165 + 352 len 32 * _167]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 100)]))
            staticcall address(cd[(arg5 + 100)]).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _283 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _285 = mem[_283]
            if mem[_283] <= 0:
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
            _295 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_295] == bool(mem[_295])
            if stor3 != address(cd[(arg5 + 100)]):
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = _285
                mem[mem[64] + 100] = 1
                require ext_code.size(stor5)
                call stor5.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 1, 0, _285, 1
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
                _315 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _319 = mem[_315]
                if mem[_315] <= 0:
                    revert with 0, 'Contract has not recived Token C'
                _323 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_323]
                mem[_323 + 32] = address(cd[(arg5 + 132)])
                require 1 < mem[_323]
                mem[_323 + 64] = address(cd[(arg5 + 68)])
                mem[_323 + 100] = stor1
                mem[_323 + 132] = -1
                require ext_code.size(address(cd[(arg5 + 132)]))
                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor1, -1
                mem[_323 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _323 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[_323 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_323 + ceil32(return_data.size) + 100] = _319
                mem[_323 + ceil32(return_data.size) + 132] = 1
                mem[_323 + ceil32(return_data.size) + 164] = 160
                mem[_323 + ceil32(return_data.size) + 260] = mem[_323]
                idx = 0
                s = _323 + ceil32(return_data.size) + 292
                t = _323 + 32
                while idx < mem[_323]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_323 + ceil32(return_data.size) + 196] = this.address
                mem[_323 + ceil32(return_data.size) + 228] = block.timestamp + 1
                require ext_code.size(stor4)
                call stor4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _319, 1, 160, address(this.address), block.timestamp + 1, mem[_323 + ceil32(return_data.size) + 260 len (32 * mem[_323]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_323 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _323 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _389 = mem[_323 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _319) >> 32
                require mem[_323 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _319) >> 32 <= test266151307()
                require _323 + ceil32(return_data.size) + mem[_323 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _319) >> 32 + 127 < _323 + ceil32(return_data.size) + return_data.size + 96
                _391 = mem[_323 + ceil32(return_data.size) + mem[_323 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _319) >> 32 + 96]
                require mem[_323 + ceil32(return_data.size) + mem[_323 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _319) >> 32 + 96] <= test266151307()
                require (32 * mem[_323 + ceil32(return_data.size) + mem[_323 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _319) >> 32 + 96]) + 32 >= 0 and _323 + (2 * ceil32(return_data.size)) + (32 * mem[_323 + ceil32(return_data.size) + mem[_323 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _319) >> 32 + 96]) + 128 <= test266151307()
                mem[64] = _323 + (2 * ceil32(return_data.size)) + (32 * mem[_323 + ceil32(return_data.size) + mem[_323 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _319) >> 32 + 96]) + 128
                mem[_323 + (2 * ceil32(return_data.size)) + 96] = _391
                require return_data.size >= _389 + (32 * _391) + 32
                mem[_323 + (2 * ceil32(return_data.size)) + 128 len 32 * _391] = mem[_323 + ceil32(return_data.size) + _389 + 128 len 32 * _391]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 68)]))
                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_419] <= 0:
                    revert with 0, 'Contract has not recived Token A'
            else:
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = _285
                mem[mem[64] + 100] = 1
                require ext_code.size(stor5)
                call stor5.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 0, 1, _285, 1
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
                _316 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _320 = mem[_316]
                if mem[_316] <= 0:
                    revert with 0, 'Contract has not recived Token C'
                _326 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_326]
                mem[_326 + 32] = address(cd[(arg5 + 132)])
                require 1 < mem[_326]
                mem[_326 + 64] = address(cd[(arg5 + 68)])
                mem[_326 + 100] = stor1
                mem[_326 + 132] = -1
                require ext_code.size(address(cd[(arg5 + 132)]))
                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor1, -1
                mem[_326 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _326 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[_326 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_326 + ceil32(return_data.size) + 100] = _320
                mem[_326 + ceil32(return_data.size) + 132] = 1
                mem[_326 + ceil32(return_data.size) + 164] = 160
                mem[_326 + ceil32(return_data.size) + 260] = mem[_326]
                idx = 0
                s = _326 + ceil32(return_data.size) + 292
                t = _326 + 32
                while idx < mem[_326]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_326 + ceil32(return_data.size) + 196] = this.address
                mem[_326 + ceil32(return_data.size) + 228] = block.timestamp + 1
                require ext_code.size(stor4)
                call stor4.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _326 + ceil32(return_data.size) + (32 * mem[_326]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _388 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _390 = mem[_388]
                require mem[_388] <= test266151307()
                require _388 + mem[_388] + 31 < _388 + return_data.size
                _392 = mem[_388 + mem[_388]]
                require mem[_388 + mem[_388]] <= test266151307()
                require (32 * mem[_388 + mem[_388]]) + 32 >= 0 and _388 + ceil32(return_data.size) + (32 * mem[_388 + mem[_388]]) + 32 <= test266151307()
                mem[64] = _388 + ceil32(return_data.size) + (32 * mem[_388 + mem[_388]]) + 32
                mem[_388 + ceil32(return_data.size)] = _392
                require return_data.size >= _390 + (32 * _392) + 32
                mem[_388 + ceil32(return_data.size) + 32 len 32 * _392] = mem[_388 + _390 + 32 len 32 * _392]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 68)]))
                staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _420 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_420] <= 0:
                    revert with 0, 'Contract has not recived Token A'
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}



}
