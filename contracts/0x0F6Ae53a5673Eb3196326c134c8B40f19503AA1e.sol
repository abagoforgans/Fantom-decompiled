contract main {




// =====================  Runtime code  =====================


const sub_82c70bbf(?) = 0x328a7b4d538a2b3942653a9983fda3c12c571141

const sub_cda84578(?) = 0x4c762a5df2fa02fe868f25359e0c259fb811cfe

const sub_e398fa1a(?) = 0xcc3e89fbc10e155f1164f8c9cf0703acde53f6fd


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
    require arg1 == arg1
    require msg.sender == beneficiaryAddress
    beneficiaryAddress = arg1
}

function sub_f8f179b0(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    stor1 = address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).flashLoan(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args address(this.address), arg2, 96, 96, address(arg3), address(arg4), address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 0
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if stor1 != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    mem[100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'flashloan failed?'
    require arg5.length >= 96
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    mem[ceil32(return_data.size) + 100] = address(cd[(arg5 + 68)])
    mem[ceil32(return_data.size) + 132] = arg3
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 68)]), arg3
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'trade 1 approval failed'
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = arg2
    mem[(2 * ceil32(return_data.size)) + 160] = address(cd[(arg5 + 36)])
    mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg3
    mem[(2 * ceil32(return_data.size)) + 228] = 64
    mem[(2 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[(arg5 + 68)]))
    staticcall address(cd[(arg5 + 68)]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _94 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _95 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require return_data.size >= _94 + (32 * _95) + 32
    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _95] = mem[(2 * ceil32(return_data.size)) + _94 + 224 len 32 * _95]
    if _95 < 1:
        revert with 0, 17
    if _95 - 1 >= _95:
        revert with 0, 50
    _165 = mem[(32 * _95 - 1) + (4 * ceil32(return_data.size)) + 224]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = _165
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(address(cd[(arg5 + 68)]))
    call address(cd[(arg5 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, _165, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _229 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _230 = mem[_229]
    require mem[_229] <= test266151307()
    require _229 + mem[_229] + 31 < _229 + return_data.size
    _231 = mem[_229 + mem[_229]]
    if mem[_229 + mem[_229]] > test266151307():
        revert with 0, 65
    if _229 + ceil32(return_data.size) + ceil32(32 * mem[_229 + mem[_229]]) + 1 > test266151307() or ceil32(32 * mem[_229 + mem[_229]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _229 + ceil32(return_data.size) + ceil32(32 * mem[_229 + mem[_229]]) + 1
    mem[_229 + ceil32(return_data.size)] = _231
    require return_data.size >= _230 + (32 * _231) + 32
    mem[_229 + ceil32(return_data.size) + 32 len 32 * _231] = mem[_229 + _230 + 32 len 32 * _231]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 36)]))
    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _289 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _290 = mem[_289]
    mem[mem[64] + 4] = address(cd[(arg5 + 100)])
    mem[mem[64] + 36] = _290
    require ext_code.size(address(cd[(arg5 + 36)]))
    call address(cd[(arg5 + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 100)]), _290
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _293 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_293] == bool(mem[_293])
    if not mem[_293]:
        revert with 0, 'trade 2 approval failed'
    _296 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_296]:
        revert with 0, 50
    mem[_296 + 32] = address(cd[(arg5 + 36)])
    if 1 >= mem[_296]:
        revert with 0, 50
    mem[_296 + 64] = arg2
    mem[_296 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_296 + 100] = _290
    mem[_296 + 132] = 64
    mem[_296 + 164] = mem[_296]
    idx = 0
    s = _296 + 32
    t = _296 + 196
    while idx < mem[_296]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[(arg5 + 100)]))
    staticcall address(cd[(arg5 + 100)]).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _296 + (32 * mem[_296]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _341 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _342 = mem[_341]
    require mem[_341] <= test266151307()
    require _341 + mem[_341] + 31 < _341 + return_data.size
    _343 = mem[_341 + mem[_341]]
    if mem[_341 + mem[_341]] > test266151307():
        revert with 0, 65
    if _341 + ceil32(return_data.size) + ceil32(32 * mem[_341 + mem[_341]]) + 1 > test266151307() or ceil32(32 * mem[_341 + mem[_341]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _341 + ceil32(return_data.size) + ceil32(32 * mem[_341 + mem[_341]]) + 1
    mem[_341 + ceil32(return_data.size)] = _343
    require return_data.size >= _342 + (32 * _343) + 32
    mem[_341 + ceil32(return_data.size) + 32 len 32 * _343] = mem[_341 + _342 + 32 len 32 * _343]
    if _343 < 1:
        revert with 0, 17
    if _343 - 1 >= _343:
        revert with 0, 50
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _290
    mem[mem[64] + 36] = mem[(32 * _343 - 1) + _341 + ceil32(return_data.size) + 32]
    mem[mem[64] + 68] = 160
    _381 = mem[_296]
    mem[mem[64] + 164] = mem[_296]
    idx = 0
    s = _296 + 32
    t = mem[64] + 196
    while idx < _381:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(address(cd[(arg5 + 100)]))
    call address(cd[(arg5 + 100)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _290, mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _381) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _409 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _410 = mem[_409]
    require mem[_409] <= test266151307()
    require _409 + mem[_409] + 31 < _409 + return_data.size
    _411 = mem[_409 + mem[_409]]
    if mem[_409 + mem[_409]] > test266151307():
        revert with 0, 65
    if _409 + ceil32(return_data.size) + ceil32(32 * mem[_409 + mem[_409]]) + 1 > test266151307() or ceil32(32 * mem[_409 + mem[_409]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _409 + ceil32(return_data.size) + ceil32(32 * mem[_409 + mem[_409]]) + 1
    mem[_409 + ceil32(return_data.size)] = _411
    require return_data.size >= _410 + (32 * _411) + 32
    mem[_409 + ceil32(return_data.size) + 32 len 32 * _411] = mem[_409 + _410 + 32 len 32 * _411]
    if arg3 > !arg4:
        revert with 0, 17
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg3 + arg4
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg3 + arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _435 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_435] == bool(mem[_435])
    if not mem[_435]:
        revert with 0, 'repayment failed'
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _441 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _442 = mem[_441]
    mem[mem[64] + 4] = beneficiaryAddress
    mem[mem[64] + 36] = _442
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, _442
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _445 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_445] == bool(mem[_445])
    if not mem[_445]:
        revert with 0, 'take profit failed'
    emit 0x874f886a: address(arg1), address(arg2), _442
}



}
