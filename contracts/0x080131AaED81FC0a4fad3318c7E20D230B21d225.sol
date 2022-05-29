contract main {




// =====================  Runtime code  =====================


const sub_50d7d613(?) = 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52

const sub_82c70bbf(?) = 0x328a7b4d538a2b3942653a9983fda3c12c571141

const sub_8ed8ea7e(?) = 0xf491e7b69e4244ad4002bc14e878a34207e38c29

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
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = arg2
    mem[ceil32(return_data.size) + 160] = address(cd[(arg5 + 36)])
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg3
    mem[ceil32(return_data.size) + 228] = 0
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
    require ext_code.size(address(cd[(arg5 + 68)]))
    call address(cd[(arg5 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _38 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _39 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _39
    require return_data.size >= _38 + (32 * _39) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _39] = mem[ceil32(return_data.size) + _38 + 224 len 32 * _39]
    if arg3 > !arg4:
        revert with 0, 17
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg3 + arg4
    require ext_code.size(arg2)
    call arg2.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg3 + arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _63 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_63] == bool(mem[_63])
    if not mem[_63]:
        revert with 0, 'repayment failed'
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _69 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _70 = mem[_69]
    mem[mem[64] + 4] = beneficiaryAddress
    mem[mem[64] + 36] = _70
    require ext_code.size(arg2)
    call arg2.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args beneficiaryAddress, _70
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _73 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_73] == bool(mem[_73])
    if not mem[_73]:
        revert with 0, 'take profit failed'
    emit 0x874f886a: address(arg1), address(arg2), _70
}



}
