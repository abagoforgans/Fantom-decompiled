contract main {




// =====================  Runtime code  =====================


address beneficiaryAddress;

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

function sub_19752de8(?) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(arg1)
    call arg1.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args this.address, arg2, 96, 96, address(arg3), address(arg4), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[96] = arg5.length
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    require arg5.length >= 96
    _3 = mem[128]
    _4 = mem[160]
    _5 = mem[192]
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[160]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg5.length) + 128] = 2
    require 0 < 0, 2
    mem[ceil32(arg5.length) + 160] = arg2
    require 1 < 0, 2
    mem[ceil32(arg5.length) + 192] = address(_3)
    mem[ceil32(arg5.length) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg5.length) + 228] = arg3
    mem[ceil32(arg5.length) + 260] = 0
    mem[ceil32(arg5.length) + 324] = this.address
    mem[ceil32(arg5.length) + 356] = block.timestamp
    mem[ceil32(arg5.length) + 292] = 160
    mem[ceil32(arg5.length) + 388] = 0, 2
    mem[ceil32(arg5.length) + 420 len floor32(0, 2)] = mem[ceil32(arg5.length) + 160 len floor32(0, 2)]
    require ext_code.size(address(_4))
    call address(_4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args mem[ceil32(arg5.length) + 228 len (32 * 0, 2) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg5.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(arg5.length) + ceil32(return_data.size) + 224
    require return_data.size >= 32
    _77 = mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg3) >> 32
    require mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[ceil32(arg5.length) + mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(arg5.length) + mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
    mem[ceil32(arg5.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg5.length) + mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    _80 = mem[ceil32(arg5.length) + _77 + 224]
    mem[ceil32(arg5.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg5.length) + _77 + 224])] = mem[ceil32(arg5.length) + _77 + 256 len floor32(mem[ceil32(arg5.length) + _77 + 224])]
    require ext_code.size(address(_3))
    staticcall address(_3).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(_3))
    staticcall address(_3).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(_3))
    call address(_3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(_5), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _80) + ceil32(arg5.length) + ceil32(return_data.size) + 320] = arg2
    mem[(32 * _80) + ceil32(arg5.length) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _80) + ceil32(arg5.length) + ceil32(return_data.size) + 356] = ext_call.return_data[0]
    mem[(32 * _80) + ceil32(arg5.length) + ceil32(return_data.size) + 388] = 0
    mem[(32 * _80) + ceil32(arg5.length) + ceil32(return_data.size) + 452] = this.address
    mem[(32 * _80) + ceil32(arg5.length) + ceil32(return_data.size) + 484] = block.timestamp
    mem[(32 * _80) + ceil32(arg5.length) + ceil32(return_data.size) + 420] = 160
    mem[(32 * _80) + ceil32(arg5.length) + ceil32(return_data.size) + 516] = 2
    mem[(32 * _80) + ceil32(arg5.length) + ceil32(return_data.size) + 548 len 0] = None
    require ext_code.size(address(_5))
    call address(_5).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _80) + ceil32(arg5.length) + ceil32(return_data.size) + 548 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _80) + ceil32(arg5.length) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _80) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    require mem[(32 * _80) + ceil32(arg5.length) + ceil32(return_data.size) + 352 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _80) + ceil32(arg5.length) + ceil32(return_data.size) + 352 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[(32 * _80) + ceil32(arg5.length) + ceil32(return_data.size) + mem[(32 * _80) + ceil32(arg5.length) + ceil32(return_data.size) + 352 len 4], ext_call.return_data[0 len 28] + 352] <= 4294967296 and mem[(32 * _80) + ceil32(arg5.length) + ceil32(return_data.size) + 352 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _80) + ceil32(arg5.length) + ceil32(return_data.size) + mem[(32 * _80) + ceil32(arg5.length) + ceil32(return_data.size) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 <= return_data.size
    require ext_code.size(arg2)
    call arg2.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg4 + arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'repayment failed'
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args beneficiaryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'take profit failed'
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x874f886a: address(arg1), address(arg2), ext_call.return_data[0]
}



}
