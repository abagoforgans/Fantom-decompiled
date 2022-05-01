contract main {




// =====================  Runtime code  =====================


const sub_d2201f97(?) = eth.balance(this.address)


address stor0;
address FACTORYAddress;
address ROUTERAddress;
address WETHAddress;

function FACTORY() {
    return FACTORYAddress
}

function ROUTER() {
    return ROUTERAddress
}

function WETH() {
    return WETHAddress
}

function sendEther() payable {
  stop
}

function _fallback() payable {
    revert
}

function transferEth(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Not Owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function getbalance(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transfer(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Not Owner'
    if arg1 == WETHAddress:
        revert with 0, 'Do not use for WETH'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Insufficient Balance'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_abb72492(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'Not Owner'
    require ext_code.size(FACTORYAddress)
    staticcall FACTORYAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args WETHAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'No direct pair found !'
    mem[160] = arg1
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(ROUTERAddress)
    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _46 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    _49 = mem[_46 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_46 + 192])] = mem[_46 + 224 len floor32(mem[_46 + 192])]
    require 0 < mem[ceil32(return_data.size) + 192]
    _73 = mem[ceil32(return_data.size) + 224]
    mem[(32 * _49) + ceil32(return_data.size) + 224] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(WETHAddress)
    call WETHAddress.deposit() with:
       value _73 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < mem[ceil32(return_data.size) + 192]
    _77 = mem[ceil32(return_data.size) + 224]
    mem[(32 * _49) + ceil32(return_data.size) + 228] = address(ext_call.return_data[0])
    mem[(32 * _49) + ceil32(return_data.size) + 260] = _77
    require ext_code.size(WETHAddress)
    call WETHAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), _77
    mem[(32 * _49) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require 1 < mem[ceil32(return_data.size) + 192]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg2, mem[ceil32(return_data.size) + 256], address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
