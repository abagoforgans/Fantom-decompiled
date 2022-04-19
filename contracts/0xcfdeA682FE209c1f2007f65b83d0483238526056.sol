contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function sub_144cfbdb(?) payable {
    require calldata.size - 4 >= 32
    if not arg1 / 10000:
        return 0
    if 3 * arg1 / 10000 / arg1 / 10000 != 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (3 * arg1 / 10000)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    owner = arg1
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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

function sub_d042c89f(?) payable {
    require calldata.size - 4 >= 256
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == address(arg8)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg2))
    call address(arg2).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor1, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor1)
    call stor1.flashLoan(address rg1, address rg2, uint256 rg3, bytes rg4) with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg1, 128, 192, arg3 << 192, arg4, address(arg5), address(arg6), address(arg7), address(arg8)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No profit made revert'
}

function sub_74e74144(?) payable {
    require calldata.size - 4 >= 160
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[128] = address(arg3)
    mem[160] = address(arg4)
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    idx = 0
    s = ceil32(return_data.size) + 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg5))
    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg1, arg2, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return 0
}

function sub_b2af9051(?) payable {
    require calldata.size - 4 >= 160
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[96] = 2
    mem[128] = address(arg3)
    mem[160] = address(arg4)
    mem[196] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 192] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = arg2
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp
    require ext_code.size(address(arg5))
    call address(arg5).swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg1, arg2, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _28 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _29 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = _29
    require return_data.size >= _28 + (32 * _29) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _29] = mem[ceil32(return_data.size) + _28 + 224 len 32 * _29]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _43 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if ext_call.return_data[0] > mem[_43]:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[mem[64]] = mem[_43] - ext_call.return_data[0]
    return memory
      from mem[64]
       len 32
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if stor1 != msg.sender:
        revert with 0, 'FlashBorrower: Untrusted lender'
    if arg1 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FlashBorrower: Untrusted loan initiator'
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    require arg5.length >= 192
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    mem[288] = cd[(arg5 + 36)]
    mem[320] = cd[(arg5 + 68)]
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    mem[352] = cd[(arg5 + 100)]
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    mem[384] = cd[(arg5 + 132)]
    require cd[(arg5 + 164)] == address(cd[(arg5 + 164)])
    mem[416] = cd[(arg5 + 164)]
    require cd[(arg5 + 196)] == address(cd[(arg5 + 196)])
    mem[448] = cd[(arg5 + 196)]
    if arg2 == address(cd[(arg5 + 100)]):
        mem[484] = address(cd[(arg5 + 132)])
        mem[516] = -1
        require ext_code.size(address(cd[(arg5 + 100)]))
        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 132)]), -1
        mem[480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 484] = address(cd[(arg5 + 36)])
        mem[ceil32(return_data.size) + 516] = cd[(arg5 + 68)]
        mem[ceil32(return_data.size) + 548] = address(cd[(arg5 + 196)])
        require ext_code.size(address(cd[(arg5 + 132)]))
        call address(cd[(arg5 + 132)]).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 36)]), cd[(arg5 + 68)], address(cd[(arg5 + 196)])
        mem[ceil32(return_data.size) + 480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 484] = this.address
        mem[(2 * ceil32(return_data.size)) + 516] = -1
        require ext_code.size(address(cd[(arg5 + 196)]))
        call address(cd[(arg5 + 196)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(this.address), -1
        mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 484] = this.address
        require ext_code.size(address(cd[(arg5 + 196)]))
        staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 484] = ext_call.return_data[0]
        require ext_code.size(address(cd[(arg5 + 196)]))
        call address(cd[(arg5 + 196)]).redeem(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg5 + 196)]))
        staticcall address(cd[(arg5 + 196)]).underlying() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == arg2:
            if arg4 + arg3 < arg3:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg4 + arg3:
                revert with 0, 'Need more to pay back flashloan'
        else:
            mem[(8 * ceil32(return_data.size)) + 484] = address(cd[(arg5 + 164)])
            mem[(8 * ceil32(return_data.size)) + 516] = -1
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[(arg5 + 164)]), -1
            mem[(8 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(10 * ceil32(return_data.size)) + 484] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(10 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(11 * ceil32(return_data.size)) + 480] = 2
            mem[(11 * ceil32(return_data.size)) + 512] = address(ext_call.return_data[0])
            mem[(11 * ceil32(return_data.size)) + 544] = arg2
            mem[(11 * ceil32(return_data.size)) + 580] = this.address
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(11 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (12 * ceil32(return_data.size)) + 576
            require return_data.size >= 32
            mem[(12 * ceil32(return_data.size)) + 576] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 580] = ext_call.return_data[0]
            mem[(12 * ceil32(return_data.size)) + 612] = 1
            mem[(12 * ceil32(return_data.size)) + 644] = 160
            mem[(12 * ceil32(return_data.size)) + 740] = 2
            idx = 0
            s = (12 * ceil32(return_data.size)) + 772
            t = (11 * ceil32(return_data.size)) + 512
            while idx < mem[(11 * ceil32(return_data.size)) + 480]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(12 * ceil32(return_data.size)) + 676] = this.address
            mem[(12 * ceil32(return_data.size)) + 708] = block.timestamp
            require ext_code.size(address(cd[(arg5 + 164)]))
            call address(cd[(arg5 + 164)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (12 * ceil32(return_data.size)) + -mem[64] + 832]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _201 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if ext_call.return_data[0] > mem[_201]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg4 + arg3 < arg3:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _219 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_219] < arg4 + arg3:
                revert with 0, 'Need more to pay back flashloan'
    else:
        mem[484] = address(cd[(arg5 + 164)])
        mem[516] = -1
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 164)]), -1
        mem[480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 480] = 2
        mem[ceil32(return_data.size) + 512] = arg2
        mem[ceil32(return_data.size) + 544] = address(cd[(arg5 + 100)])
        mem[ceil32(return_data.size) + 580] = this.address
        require ext_code.size(address(cd[(arg5 + 100)]))
        staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 576
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 576] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 580] = arg3
        mem[(2 * ceil32(return_data.size)) + 612] = cd[(arg5 + 68)]
        mem[(2 * ceil32(return_data.size)) + 644] = 160
        mem[(2 * ceil32(return_data.size)) + 740] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 772
        t = ceil32(return_data.size) + 512
        while idx < mem[ceil32(return_data.size) + 480]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 676] = this.address
        mem[(2 * ceil32(return_data.size)) + 708] = block.timestamp
        require ext_code.size(address(cd[(arg5 + 164)]))
        call address(cd[(arg5 + 164)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 832]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 100)]))
        staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _202 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if ext_call.return_data[0] > mem[_202]:
            revert with 0, 'SafeMath: subtraction overflow'
        _209 = mem[352]
        mem[mem[64] + 4] = mem[396 len 20]
        mem[mem[64] + 36] = -1
        require ext_code.size(address(_209))
        call address(_209).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _216 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_216] == bool(mem[_216])
        _220 = mem[384]
        _222 = mem[320]
        _223 = mem[448]
        mem[mem[64] + 4] = mem[300 len 20]
        mem[mem[64] + 36] = _222
        mem[mem[64] + 68] = address(_223)
        require ext_code.size(address(_220))
        call address(_220).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _222, address(_223)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _233 = mem[448]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = -1
        require ext_code.size(address(_233))
        call address(_233).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(this.address), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _236 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_236] == bool(mem[_236])
        _238 = mem[448]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_238))
        staticcall address(_238).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _241 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _242 = mem[_241]
        mem[mem[64] + 4] = mem[_241]
        require ext_code.size(address(_238))
        call address(_238).redeem(uint256 rg1) with:
             gas gas_remaining wei
            args _242
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(mem[460 len 20])
        staticcall mem[460 len 20].underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _250 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _251 = mem[_250]
        require mem[_250] == mem[_250 + 12 len 20]
        if mem[_250 + 12 len 20] == arg2:
            if arg4 + arg3 < arg3:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_261] < arg4 + arg3:
                revert with 0, 'Need more to pay back flashloan'
        else:
            mem[mem[64] + 4] = mem[428 len 20]
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_251))
            call address(_251).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_258] == bool(mem[_258])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_251))
            staticcall address(_251).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _267 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _270 = mem[_267]
            _271 = mem[416]
            _272 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_272]
            mem[_272 + 32] = address(_251)
            require 1 < mem[_272]
            mem[_272 + 64] = arg2
            mem[_272 + 100] = this.address
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[_272 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _272 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            mem[_272 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[_272 + ceil32(return_data.size) + 100] = _270
            mem[_272 + ceil32(return_data.size) + 132] = 1
            mem[_272 + ceil32(return_data.size) + 164] = 160
            mem[_272 + ceil32(return_data.size) + 260] = mem[_272]
            idx = 0
            s = _272 + ceil32(return_data.size) + 292
            t = _272 + 32
            while idx < mem[_272]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_272 + ceil32(return_data.size) + 196] = this.address
            mem[_272 + ceil32(return_data.size) + 228] = block.timestamp
            require ext_code.size(address(_271))
            call address(_271).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _272 + ceil32(return_data.size) + (32 * mem[_272]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _303 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if ext_call.return_data[0] > mem[_303]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg4 + arg3 < arg3:
                revert with 0, 'SafeMath: addition overflow'
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _311 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_311] < arg4 + arg3:
                revert with 0, 'Need more to pay back flashloan'
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}



}
