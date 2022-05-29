contract main {




// =====================  Runtime code  =====================


address beneficiaryAddress;
address stor1;

function beneficiary() payable {
    return beneficiaryAddress
}

function _fallback() payable {
    revert
}

function setBeneficiary(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == beneficiaryAddress
    beneficiaryAddress = arg1
}

function sub_f8f179b0(?) payable {
    require calldata.size - 4 >= 160
    stor1 = arg1
    require ext_code.size(arg1)
    call arg1.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args this.address, arg2, 96, 96, address(arg3), address(arg4), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 0
}

function sub_3d24e1dd(?) payable {
    require calldata.size - 4 >= 160
    mem[96] = 2
    mem[128] = arg2
    mem[160] = arg3
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(arg4)
    staticcall arg4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _40 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _43 = mem[_40 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_40 + 192])] = mem[_40 + 224 len floor32(mem[_40 + 192])]
    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
    _70 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
    mem[(32 * _43) + ceil32(return_data.size) + 288] = arg2
    mem[(32 * _43) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _43) + ceil32(return_data.size) + 324] = _70
    mem[(32 * _43) + ceil32(return_data.size) + 356] = 64
    mem[(32 * _43) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _43) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg5)
    staticcall arg5.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _70, Array(len=2, data=mem[(32 * _43) + ceil32(return_data.size) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _43) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _43) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _93 = mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _70) >> 32
    require mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _70) >> 32 <= 4294967296
    require mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _70) >> 32 + 32 <= return_data.size
    require mem[(32 * _43) + ceil32(return_data.size) + mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _70) >> 32 + 320] <= 4294967296 and mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _70) >> 32 + (32 * mem[(32 * _43) + ceil32(return_data.size) + mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _70) >> 32 + 320]) + 32 <= return_data.size
    mem[(32 * _43) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _43) + ceil32(return_data.size) + mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _70) >> 32 + 320]
    _96 = mem[(32 * _43) + ceil32(return_data.size) + _93 + 320]
    mem[(32 * _43) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _43) + ceil32(return_data.size) + _93 + 320])] = mem[(32 * _43) + ceil32(return_data.size) + _93 + 352 len floor32(mem[(32 * _43) + ceil32(return_data.size) + _93 + 320])]
    require mem[(32 * _43) + (2 * ceil32(return_data.size)) + 320] - 1 < mem[(32 * _43) + (2 * ceil32(return_data.size)) + 320]
    _106 = mem[(32 * mem[(32 * _43) + (2 * ceil32(return_data.size)) + 320] - 1) + (32 * _43) + (2 * ceil32(return_data.size)) + 352]
    mem[(32 * _96) + (32 * _43) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * mem[(32 * _43) + (2 * ceil32(return_data.size)) + 320] - 1) + (32 * _43) + (2 * ceil32(return_data.size)) + 352] > (3 * arg1 / 10000) + arg1
    return mem[(32 * _96) + (32 * _43) + (2 * ceil32(return_data.size)) + 352], _106 - (3 * arg1 / 10000) - arg1
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if stor1 != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe496e76616c69642062616c616e63652c207761732074686520666c6173684c6f616e207375636365737366756c,
                    mem[210 len 18]
    require arg5.length >= 96
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 68)]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = arg2
    mem[160] = address(cd[(arg5 + 36)])
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(address(cd[(arg5 + 68)]))
    staticcall address(cd[(arg5 + 68)]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _96 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _99 = mem[_96 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_96 + 192])] = mem[_96 + 224 len floor32(mem[_96 + 192])]
    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
    _171 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
    mem[(32 * _99) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _99) + ceil32(return_data.size) + 228] = arg3
    mem[(32 * _99) + ceil32(return_data.size) + 260] = _171
    mem[(32 * _99) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _99) + ceil32(return_data.size) + 356] = block.timestamp
    mem[(32 * _99) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _99) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _99) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(address(cd[(arg5 + 68)]))
    call address(cd[(arg5 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, _171, Array(len=2, data=mem[(32 * _99) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _99) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _99) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _239 = mem[(32 * _99) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
    require mem[(32 * _99) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * _99) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[(32 * _99) + ceil32(return_data.size) + mem[(32 * _99) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _99) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _99) + ceil32(return_data.size) + mem[(32 * _99) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
    mem[(32 * _99) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _99) + ceil32(return_data.size) + mem[(32 * _99) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    _242 = mem[(32 * _99) + ceil32(return_data.size) + _239 + 224]
    mem[(32 * _99) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _99) + ceil32(return_data.size) + _239 + 224])] = mem[(32 * _99) + ceil32(return_data.size) + _239 + 256 len floor32(mem[(32 * _99) + ceil32(return_data.size) + _239 + 224])]
    require ext_code.size(address(cd[(arg5 + 36)]))
    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[(arg5 + 36)]))
    call address(cd[(arg5 + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 100)]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + 320] = arg2
    mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
    mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + 388] = 64
    mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + 420] = 2
    mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + 452 len 0] = None
    require ext_code.size(address(cd[(arg5 + 100)]))
    staticcall address(cd[(arg5 + 100)]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + 452 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _354 = mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
    require mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= 4294967296 and mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 <= return_data.size
    mem[(32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 352] = mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
    _357 = mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + _354 + 352]
    mem[(32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + _354 + 352])] = mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + _354 + 384 len floor32(mem[(32 * _242) + (32 * _99) + (2 * ceil32(return_data.size)) + _354 + 352])]
    mem[64] = (32 * _357) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 384
    require mem[(32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 352] - 1 < mem[(32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 352]
    _394 = mem[(32 * mem[(32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 352] - 1) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 384]
    mem[(32 * _357) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _357) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
    mem[(32 * _357) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 420] = _394
    mem[(32 * _357) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 484] = this.address
    mem[(32 * _357) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 516] = block.timestamp
    mem[(32 * _357) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 452] = 160
    mem[(32 * _357) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 548] = 2
    mem[(32 * _357) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 580 len 0] = None
    require ext_code.size(address(cd[(arg5 + 100)]))
    call address(cd[(arg5 + 100)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], _394, Array(len=2, data=mem[(32 * _357) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 580 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _357) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _357) + (32 * _242) + (32 * _99) + (6 * ceil32(return_data.size)) + 384
    require return_data.size >= 32
    require mem[(32 * _357) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _357) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[(32 * _357) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + mem[(32 * _357) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[(32 * _357) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _357) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + mem[(32 * _357) + (32 * _242) + (32 * _99) + (4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg4 + arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'repayment failed'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'take profit failed'
    emit 0x874f886a: address(arg1), address(arg2), ext_call.return_data[0]
}



}
