contract main {




// =====================  Runtime code  =====================


const sub_82c70bbf(?) = 0x328a7b4d538a2b3942653a9983fda3c12c571141

const sub_cda84578(?) = 0x4c762a5df2fa02fe868f25359e0c259fb811cfe

const sub_e398fa1a(?) = 0xcc3e89fbc10e155f1164f8c9cf0703acde53f6fd


address beneficiaryAddress;

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
    require ext_code.size(address(arg1))
    call address(arg1).flashLoan(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args address(this.address), arg2, 96, 96, address(arg3), address(arg4), address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require arg5.length >= 96
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    mem[100] = address(cd[(arg5 + 68)])
    mem[132] = arg3
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 68)]), arg3
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'trade 1 approval failed'
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = arg2
    mem[ceil32(return_data.size) + 160] = address(cd[(arg5 + 36)])
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg3
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[(arg5 + 68)]))
    staticcall address(cd[(arg5 + 68)]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _86 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _87 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require return_data.size >= _86 + (32 * _87) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _87] = mem[ceil32(return_data.size) + _86 + 224 len 32 * _87]
    if _87 < 1:
        revert with 0, 17
    if _87 - 1 >= _87:
        revert with 0, 50
    _157 = mem[(32 * _87 - 1) + (2 * ceil32(return_data.size)) + 224]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = _157
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
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
        args arg3, _157, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _221 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _222 = mem[_221]
    require mem[_221] <= test266151307()
    require _221 + mem[_221] + 31 < _221 + return_data.size
    _223 = mem[_221 + mem[_221]]
    if mem[_221 + mem[_221]] > test266151307():
        revert with 0, 65
    if _221 + ceil32(return_data.size) + ceil32(32 * mem[_221 + mem[_221]]) + 1 > test266151307() or ceil32(32 * mem[_221 + mem[_221]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _221 + ceil32(return_data.size) + ceil32(32 * mem[_221 + mem[_221]]) + 1
    mem[_221 + ceil32(return_data.size)] = _223
    require return_data.size >= _222 + (32 * _223) + 32
    mem[_221 + ceil32(return_data.size) + 32 len 32 * _223] = mem[_221 + _222 + 32 len 32 * _223]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 36)]))
    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _281 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _282 = mem[_281]
    mem[mem[64] + 4] = address(cd[(arg5 + 100)])
    mem[mem[64] + 36] = _282
    require ext_code.size(address(cd[(arg5 + 36)]))
    call address(cd[(arg5 + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 100)]), _282
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _285 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_285] == bool(mem[_285])
    if not mem[_285]:
        revert with 0, 'trade 2 approval failed'
    _288 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_288]:
        revert with 0, 50
    mem[_288 + 32] = address(cd[(arg5 + 36)])
    if 1 >= mem[_288]:
        revert with 0, 50
    mem[_288 + 64] = arg2
    mem[_288 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_288 + 100] = _282
    mem[_288 + 132] = 64
    mem[_288 + 164] = mem[_288]
    idx = 0
    s = _288 + 32
    t = _288 + 196
    while idx < mem[_288]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[(arg5 + 100)]))
    staticcall address(cd[(arg5 + 100)]).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _288 + (32 * mem[_288]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _333 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _334 = mem[_333]
    require mem[_333] <= test266151307()
    require _333 + mem[_333] + 31 < _333 + return_data.size
    _335 = mem[_333 + mem[_333]]
    if mem[_333 + mem[_333]] > test266151307():
        revert with 0, 65
    if _333 + ceil32(return_data.size) + ceil32(32 * mem[_333 + mem[_333]]) + 1 > test266151307() or ceil32(32 * mem[_333 + mem[_333]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _333 + ceil32(return_data.size) + ceil32(32 * mem[_333 + mem[_333]]) + 1
    mem[_333 + ceil32(return_data.size)] = _335
    require return_data.size >= _334 + (32 * _335) + 32
    mem[_333 + ceil32(return_data.size) + 32 len 32 * _335] = mem[_333 + _334 + 32 len 32 * _335]
    if _335 < 1:
        revert with 0, 17
    if _335 - 1 >= _335:
        revert with 0, 50
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _282
    mem[mem[64] + 36] = mem[(32 * _335 - 1) + _333 + ceil32(return_data.size) + 32]
    mem[mem[64] + 68] = 160
    _373 = mem[_288]
    mem[mem[64] + 164] = mem[_288]
    idx = 0
    s = _288 + 32
    t = mem[64] + 196
    while idx < _373:
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
        args _282, mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _373) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _401 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _402 = mem[_401]
    require mem[_401] <= test266151307()
    require _401 + mem[_401] + 31 < _401 + return_data.size
    _403 = mem[_401 + mem[_401]]
    if mem[_401 + mem[_401]] > test266151307():
        revert with 0, 65
    if _401 + ceil32(return_data.size) + ceil32(32 * mem[_401 + mem[_401]]) + 1 > test266151307() or ceil32(32 * mem[_401 + mem[_401]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _401 + ceil32(return_data.size) + ceil32(32 * mem[_401 + mem[_401]]) + 1
    mem[_401 + ceil32(return_data.size)] = _403
    require return_data.size >= _402 + (32 * _403) + 32
    mem[_401 + ceil32(return_data.size) + 32 len 32 * _403] = mem[_401 + _402 + 32 len 32 * _403]
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
    _427 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_427] == bool(mem[_427])
    if not mem[_427]:
        revert with 0, 'repayment failed'
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _433 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _434 = mem[_433]
    mem[mem[64] + 4] = beneficiaryAddress
    mem[mem[64] + 36] = _434
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, _434
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _437 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_437] == bool(mem[_437])
    if not mem[_437]:
        revert with 0, 'take profit failed'
    emit 0x874f886a: address(arg1), address(arg2), _434
}



}
