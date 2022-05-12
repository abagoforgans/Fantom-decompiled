contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_092213c8(?) payable {
    require calldata.size - 4 >= 160
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if cd[4] <= 0:
        revert with 0, 'amountIn must be greater than 0'
    require 0 < ('cd', 132).length
    require ('cd', 100).length - 1 < ('cd', 100).length
    if address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]) != address(('cd', 132)[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe746f6b656e20696e7465726d656469617465206d757374206265207468652073616d,
                    mem[199 len 29]
    require 0 < ('cd', 100).length
    require ('cd', 100).length - 1 < ('cd', 100).length
    require ('cd', 132).length - 1 < ('cd', 132).length
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[4]:
        revert with 0, 'must approve first'
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = cd[4]
    mem[132] = 0
    mem[196] = this.address
    mem[228] = block.timestamp + 1000
    mem[164] = 160
    mem[260] = ('cd', 100).length
    mem[292 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    mem[(32 * ('cd', 100).length) + 292] = 0
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, uint32(cd[4]), 0, 160, address(this.address), block.timestamp + 1000, ('cd', 100).length, call.data[cd[100] + 36 len floor32(('cd', 100).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _22 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_22 + 96])] = mem[_22 + 128 len floor32(mem[_22 + 96])]
    require 0 < mem[ceil32(return_data.size) + 96]
    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
    call address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, mem[ceil32(return_data.size) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
