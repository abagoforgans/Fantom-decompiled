contract main {




// =====================  Runtime code  =====================


address sub_8ed8ea7eAddress;
address sub_50d7d613Address;
address stor2;

function sub_50d7d613(?) payable {
    return sub_50d7d613Address
}

function sub_8ed8ea7e(?) payable {
    return sub_8ed8ea7eAddress
}

function _fallback() payable {
    revert
}

function sub_7ca7437e(?) payable {
    require calldata.size - 4 >= 128
    if arg4:
        require ext_code.size(sub_8ed8ea7eAddress)
        staticcall sub_8ed8ea7eAddress.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'This pool does not exist'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args arg3, 0, this.address, 128, 160, address(arg1), address(arg2), arg3, sub_8ed8ea7eAddress, sub_50d7d613Address
    else:
        require ext_code.size(sub_50d7d613Address)
        staticcall sub_50d7d613Address.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'This pool does not exist'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args arg3, 0, this.address, 128, 160, address(arg1), address(arg2), arg3, sub_50d7d613Address, sub_8ed8ea7eAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c759fa26(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    require ext_code.size(stor2)
    staticcall stor2 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0xa5bc29c200000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = 32
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 228 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        require ext_code.size(stor2)
        staticcall stor2 with:
                gas gas_remaining wei
               args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 64]
    else:
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg2.length) + 228] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 260 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        require ext_code.size(stor2)
        staticcall stor2 with:
                gas gas_remaining wei
               args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4:
        require ext_code.size(sub_8ed8ea7eAddress)
        staticcall sub_8ed8ea7eAddress.factory() with:
                gas gas_remaining wei
    else:
        require ext_code.size(sub_50d7d613Address)
        staticcall sub_50d7d613Address.factory() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        revert with 0, 'This pool does not exist'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 516 len ceil32(0, 160)] = address(ext_call.return_data[0]), mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len ceil32(0, 160) - 32]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, 0, this.address, 128, mem[ceil32(arg1.length) + ceil32(arg2.length) + 484 len 0, 160 + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 160
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg4 + 164)]), cd[(arg4 + 100)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = address(cd[(arg4 + 68)])
    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[196] = cd[(arg4 + 100)]
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(address(cd[(arg4 + 132)]))
    staticcall address(cd[(arg4 + 132)]).getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[(arg4 + 100)], Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _45 = mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32
    require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]
    _48 = mem[_45 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_45 + 192])] = mem[_45 + 224 len floor32(mem[_45 + 192])]
    require 0 < mem[ceil32(return_data.size) + 192]
    _76 = mem[ceil32(return_data.size) + 224]
    mem[(32 * _48) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _48) + ceil32(return_data.size) + 228] = cd[(arg4 + 100)]
    mem[(32 * _48) + ceil32(return_data.size) + 260] = _76
    mem[(32 * _48) + ceil32(return_data.size) + 324] = msg.sender
    mem[(32 * _48) + ceil32(return_data.size) + 356] = block.timestamp
    mem[(32 * _48) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _48) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _48) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(address(cd[(arg4 + 164)]))
    call address(cd[(arg4 + 164)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[(arg4 + 100)], _76, Array(len=2, data=mem[(32 * _48) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _48) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _48) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _102 = mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32
    require mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= 4294967296
    require mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 32 <= return_data.size
    require mem[(32 * _48) + ceil32(return_data.size) + mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 224] <= 4294967296 and mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + (32 * mem[(32 * _48) + ceil32(return_data.size) + mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 224]) + 32 <= return_data.size
    mem[(32 * _48) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _48) + ceil32(return_data.size) + mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 224]
    mem[(32 * _48) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _48) + ceil32(return_data.size) + _102 + 224])] = mem[(32 * _48) + ceil32(return_data.size) + _102 + 256 len floor32(mem[(32 * _48) + ceil32(return_data.size) + _102 + 224])]
    require 1 < mem[(32 * _48) + (2 * ceil32(return_data.size)) + 224]
    require ext_code.size(address(cd[(arg4 + 68)]))
    call address(cd[(arg4 + 68)]).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, _76
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[(arg4 + 68)]))
    call address(cd[(arg4 + 68)]).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tx.origin, mem[(32 * _48) + (2 * ceil32(return_data.size)) + 288] - _76
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Success(address(arg1), address(cd[(arg4 + 36)]), arg2, arg3, mem[(32 * _48) + (2 * ceil32(return_data.size)) + 288] - _76);
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 160
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg4 + 164)]), cd[(arg4 + 100)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = address(cd[(arg4 + 68)])
    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[196] = cd[(arg4 + 100)]
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(address(cd[(arg4 + 132)]))
    staticcall address(cd[(arg4 + 132)]).getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[(arg4 + 100)], Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _45 = mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32
    require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]
    _48 = mem[_45 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_45 + 192])] = mem[_45 + 224 len floor32(mem[_45 + 192])]
    require 0 < mem[ceil32(return_data.size) + 192]
    _76 = mem[ceil32(return_data.size) + 224]
    mem[(32 * _48) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _48) + ceil32(return_data.size) + 228] = cd[(arg4 + 100)]
    mem[(32 * _48) + ceil32(return_data.size) + 260] = _76
    mem[(32 * _48) + ceil32(return_data.size) + 324] = msg.sender
    mem[(32 * _48) + ceil32(return_data.size) + 356] = block.timestamp
    mem[(32 * _48) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _48) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _48) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(address(cd[(arg4 + 164)]))
    call address(cd[(arg4 + 164)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[(arg4 + 100)], _76, Array(len=2, data=mem[(32 * _48) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _48) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _48) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _102 = mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32
    require mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= 4294967296
    require mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 32 <= return_data.size
    require mem[(32 * _48) + ceil32(return_data.size) + mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 224] <= 4294967296 and mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + (32 * mem[(32 * _48) + ceil32(return_data.size) + mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 224]) + 32 <= return_data.size
    mem[(32 * _48) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _48) + ceil32(return_data.size) + mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 224]
    mem[(32 * _48) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _48) + ceil32(return_data.size) + _102 + 224])] = mem[(32 * _48) + ceil32(return_data.size) + _102 + 256 len floor32(mem[(32 * _48) + ceil32(return_data.size) + _102 + 224])]
    require 1 < mem[(32 * _48) + (2 * ceil32(return_data.size)) + 224]
    require ext_code.size(address(cd[(arg4 + 68)]))
    call address(cd[(arg4 + 68)]).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, _76
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[(arg4 + 68)]))
    call address(cd[(arg4 + 68)]).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tx.origin, mem[(32 * _48) + (2 * ceil32(return_data.size)) + 288] - _76
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Success(address(arg1), address(cd[(arg4 + 36)]), arg2, arg3, mem[(32 * _48) + (2 * ceil32(return_data.size)) + 288] - _76);
}



}
