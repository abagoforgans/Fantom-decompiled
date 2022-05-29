contract main {




// =====================  Runtime code  =====================


const sub_cda84578(?) = 0x4c762a5df2fa02fe868f25359e0c259fb811cfe


address beneficiaryAddress;
address sub_82c70bbfAddress;
address sub_e398fa1aAddress;
address stor3;

function beneficiary() payable {
    return beneficiaryAddress
}

function sub_82c70bbf(?) payable {
    return sub_82c70bbfAddress
}

function sub_e398fa1a(?) payable {
    return sub_e398fa1aAddress
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
    stor3 = arg1
    require ext_code.size(arg1)
    call arg1.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args this.address, arg2, 96, 96, address(arg3), address(arg4), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3 = 0
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if stor3 != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'flashloan failed?'
    require arg5.length >= 96
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 68)]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'trade 1 approval failed'
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
    _102 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _105 = mem[_102 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_102 + 192])] = mem[_102 + 224 len floor32(mem[_102 + 192])]
    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
    _180 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
    mem[(32 * _105) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _105) + ceil32(return_data.size) + 228] = arg3
    mem[(32 * _105) + ceil32(return_data.size) + 260] = _180
    mem[(32 * _105) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _105) + ceil32(return_data.size) + 356] = block.timestamp
    mem[(32 * _105) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _105) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _105) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(address(cd[(arg5 + 68)]))
    call address(cd[(arg5 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, _180, Array(len=2, data=mem[(32 * _105) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _105) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _105) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _251 = mem[(32 * _105) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
    require mem[(32 * _105) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * _105) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[(32 * _105) + ceil32(return_data.size) + mem[(32 * _105) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _105) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _105) + ceil32(return_data.size) + mem[(32 * _105) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
    mem[(32 * _105) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _105) + ceil32(return_data.size) + mem[(32 * _105) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    _254 = mem[(32 * _105) + ceil32(return_data.size) + _251 + 224]
    mem[(32 * _105) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _105) + ceil32(return_data.size) + _251 + 224])] = mem[(32 * _105) + ceil32(return_data.size) + _251 + 256 len floor32(mem[(32 * _105) + ceil32(return_data.size) + _251 + 224])]
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
    if not ext_call.return_data[0]:
        revert with 0, 'trade 2 approval failed'
    mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + 256] = 2
    mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + 288] = address(cd[(arg5 + 36)])
    mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + 320] = arg2
    mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
    mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + 388] = 64
    mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + 420] = 2
    mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + 452 len 0] = None
    require ext_code.size(address(cd[(arg5 + 100)]))
    staticcall address(cd[(arg5 + 100)]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + 452 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _372 = mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
    require mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= 4294967296 and mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 <= return_data.size
    mem[(32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 352] = mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
    _375 = mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + _372 + 352]
    mem[(32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + _372 + 352])] = mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + _372 + 384 len floor32(mem[(32 * _254) + (32 * _105) + (2 * ceil32(return_data.size)) + _372 + 352])]
    require mem[(32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 352] - 1 < mem[(32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 352]
    _412 = mem[(32 * mem[(32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 352] - 1) + (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 384]
    mem[(32 * _375) + (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _375) + (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
    mem[(32 * _375) + (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 420] = _412
    mem[(32 * _375) + (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 484] = this.address
    mem[(32 * _375) + (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 516] = block.timestamp
    mem[(32 * _375) + (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 452] = 160
    mem[(32 * _375) + (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 548] = 2
    mem[(32 * _375) + (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 580 len 0] = None
    require ext_code.size(address(cd[(arg5 + 100)]))
    call address(cd[(arg5 + 100)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], _412, Array(len=2, data=mem[(32 * _375) + (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 580 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _375) + (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _375) + (32 * _254) + (32 * _105) + (6 * ceil32(return_data.size)) + 384
    require return_data.size >= 32
    require mem[(32 * _375) + (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _375) + (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[(32 * _375) + (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + mem[(32 * _375) + (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[(32 * _375) + (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _375) + (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + mem[(32 * _375) + (32 * _254) + (32 * _105) + (4 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
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
