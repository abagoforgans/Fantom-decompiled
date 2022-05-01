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
    require 0 < ext_call.return_data[0]
    require 1 < ext_call.return_data[0]
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[132] = 64
    mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg2), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
    require ext_code.size(ROUTERAddress)
    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _45 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    _48 = mem[_45 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_45 + 96])] = mem[_45 + 128 len floor32(mem[_45 + 96])]
    require 0 < mem[ceil32(return_data.size) + 96]
    _72 = mem[ceil32(return_data.size) + 128]
    mem[(32 * _48) + ceil32(return_data.size) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(WETHAddress)
    call WETHAddress.deposit() with:
       value _72 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < mem[ceil32(return_data.size) + 96]
    _76 = mem[ceil32(return_data.size) + 128]
    mem[(32 * _48) + ceil32(return_data.size) + 132] = address(ext_call.return_data[0])
    mem[(32 * _48) + ceil32(return_data.size) + 164] = _76
    require ext_code.size(WETHAddress)
    call WETHAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), _76
    mem[(32 * _48) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require 1 < mem[ceil32(return_data.size) + 96]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg2, mem[ceil32(return_data.size) + 160], address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
