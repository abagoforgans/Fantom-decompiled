contract main {




// =====================  Runtime code  =====================


address owner;
address stor2;
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
        mem[320] = 2
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
        s = 352
        t = ceil32(return_data.size) + 612
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 516] = this.address
        mem[ceil32(return_data.size) + 548] = block.timestamp + 1
        require ext_code.size(stor2)
        call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 1, Array(len=2, data=mem[ceil32(return_data.size) + 612 len 64]), address(this.address), block.timestamp + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _86 = mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 447 < ceil32(return_data.size) + return_data.size + 416
        _87 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 448 <= test266151307()
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 448
        mem[(2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]
        require return_data.size >= _86 + (32 * _87) + 32
        mem[(2 * ceil32(return_data.size)) + 448 len 32 * _87] = mem[ceil32(return_data.size) + _86 + 448 len 32 * _87]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 100)]))
        staticcall address(cd[(arg5 + 100)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _145 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _146 = mem[_145]
        if mem[_145] <= 0:
            revert with 0, 'Contract has not recived Token B'
        _147 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_147]
        mem[_147 + 32] = address(cd[(arg5 + 100)])
        require 1 < mem[_147]
        mem[_147 + 64] = address(cd[(arg5 + 132)])
        mem[_147 + 100] = stor2
        mem[_147 + 132] = -1
        require ext_code.size(address(cd[(arg5 + 100)]))
        call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor2, -1
        mem[_147 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _147 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[_147 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_147 + ceil32(return_data.size) + 100] = _146
        mem[_147 + ceil32(return_data.size) + 132] = 1
        mem[_147 + ceil32(return_data.size) + 164] = 160
        mem[_147 + ceil32(return_data.size) + 260] = mem[_147]
        idx = 0
        s = _147 + 32
        t = _147 + ceil32(return_data.size) + 292
        while idx < mem[_147]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_147 + ceil32(return_data.size) + 196] = this.address
        mem[_147 + ceil32(return_data.size) + 228] = block.timestamp + 1
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _147 + ceil32(return_data.size) + (32 * mem[_147]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _197 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _198 = mem[_197]
        require mem[_197] <= test266151307()
        require _197 + mem[_197] + 31 < _197 + return_data.size
        _199 = mem[_197 + mem[_197]]
        require mem[_197 + mem[_197]] <= test266151307()
        require (32 * mem[_197 + mem[_197]]) + 32 >= 0 and _197 + ceil32(return_data.size) + (32 * mem[_197 + mem[_197]]) + 32 <= test266151307()
        mem[64] = _197 + ceil32(return_data.size) + (32 * mem[_197 + mem[_197]]) + 32
        mem[_197 + ceil32(return_data.size)] = _199
        require return_data.size >= _198 + (32 * _199) + 32
        mem[_197 + ceil32(return_data.size) + 32 len 32 * _199] = mem[_197 + _198 + 32 len 32 * _199]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 132)]))
        staticcall address(cd[(arg5 + 132)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _235 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _236 = mem[_235]
        if mem[_235] <= 0:
            revert with 0, 'Contract has not recived Token C'
        _237 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_237]
        mem[_237 + 32] = address(cd[(arg5 + 132)])
        require 1 < mem[_237]
        mem[_237 + 64] = address(cd[(arg5 + 68)])
        mem[_237 + 100] = stor2
        mem[_237 + 132] = -1
        require ext_code.size(address(cd[(arg5 + 132)]))
        call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor2, -1
        mem[_237 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _237 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[_237 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_237 + ceil32(return_data.size) + 100] = _236
        mem[_237 + ceil32(return_data.size) + 132] = arg3
        mem[_237 + ceil32(return_data.size) + 164] = 160
        mem[_237 + ceil32(return_data.size) + 260] = mem[_237]
        idx = 0
        s = _237 + 32
        t = _237 + ceil32(return_data.size) + 292
        while idx < mem[_237]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_237 + ceil32(return_data.size) + 196] = this.address
        mem[_237 + ceil32(return_data.size) + 228] = block.timestamp + 1
        require ext_code.size(stor2)
        call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _236, arg3, 160, address(this.address), block.timestamp + 1, mem[_237 + ceil32(return_data.size) + 260 len (32 * mem[_237]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_237 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _237 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _266 = mem[_237 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _236) >> 32
        require mem[_237 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _236) >> 32 <= test266151307()
        require _237 + ceil32(return_data.size) + mem[_237 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _236) >> 32 + 127 < _237 + ceil32(return_data.size) + return_data.size + 96
        _267 = mem[_237 + ceil32(return_data.size) + mem[_237 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _236) >> 32 + 96]
        require mem[_237 + ceil32(return_data.size) + mem[_237 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _236) >> 32 + 96] <= test266151307()
        require (32 * mem[_237 + ceil32(return_data.size) + mem[_237 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _236) >> 32 + 96]) + 32 >= 0 and _237 + (2 * ceil32(return_data.size)) + (32 * mem[_237 + ceil32(return_data.size) + mem[_237 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _236) >> 32 + 96]) + 128 <= test266151307()
        mem[64] = _237 + (2 * ceil32(return_data.size)) + (32 * mem[_237 + ceil32(return_data.size) + mem[_237 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _236) >> 32 + 96]) + 128
        mem[_237 + (2 * ceil32(return_data.size)) + 96] = mem[_237 + ceil32(return_data.size) + mem[_237 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _236) >> 32 + 96]
        require return_data.size >= _266 + (32 * _267) + 32
        mem[_237 + (2 * ceil32(return_data.size)) + 128 len 32 * _267] = mem[_237 + ceil32(return_data.size) + _266 + 128 len 32 * _267]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 68)]))
        staticcall address(cd[(arg5 + 68)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _281 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_281] <= 0:
            revert with 0, 'Contract has not recived Token A'
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}



}
