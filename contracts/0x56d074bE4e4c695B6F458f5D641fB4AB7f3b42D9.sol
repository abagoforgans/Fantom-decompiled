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
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_a1efcf5b(?) payable {
    require calldata.size - 4 >= 192
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if cd[4] <= 0:
        revert with 0, 'amountIn must be greater than 0'
    require 0 < ('cd', 164).length
    require ('cd', 132).length - 1 < ('cd', 132).length
    if address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]) != address(('cd', 164)[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe746f6b656e20696e7465726d656469617465206d757374206265207468652073616d,
                    mem[199 len 29]
    require 0 < ('cd', 132).length
    require ('cd', 132).length - 1 < ('cd', 132).length
    require ('cd', 164).length - 1 < ('cd', 164).length
    require ext_code.size(address(('cd', 132)[0]))
    call address(('cd', 132)[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(('cd', 132)[0]))
    call address(('cd', 132)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[68]), cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = cd[4]
    mem[132] = 0
    mem[196] = this.address
    mem[228] = block.timestamp + 1000
    mem[164] = 160
    mem[260] = ('cd', 132).length
    mem[292 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
    mem[(32 * ('cd', 132).length) + 292] = 0
    require ext_code.size(address(cd[68]))
    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, uint32(cd[4]), 0, 160, address(this.address), block.timestamp + 1000, ('cd', 132).length, call.data[cd[132] + 36 len floor32(('cd', 132).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _16 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    _19 = mem[_16 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_16 + 96])] = mem[_16 + 128 len floor32(mem[_16 + 96])]
    require 1 < mem[ceil32(return_data.size) + 96]
    _43 = mem[ceil32(return_data.size) + 160]
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[100]), mem[ceil32(return_data.size) + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _19) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _19) + ceil32(return_data.size) + 132] = _43
    mem[(32 * _19) + ceil32(return_data.size) + 164] = cd[36]
    mem[(32 * _19) + ceil32(return_data.size) + 228] = this.address
    mem[(32 * _19) + ceil32(return_data.size) + 260] = block.timestamp + 1000
    mem[(32 * _19) + ceil32(return_data.size) + 196] = 160
    mem[(32 * _19) + ceil32(return_data.size) + 292] = ('cd', 164).length
    mem[(32 * _19) + ceil32(return_data.size) + 324 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
    mem[(32 * _19) + ceil32(return_data.size) + (32 * ('cd', 164).length) + 324] = 0
    require ext_code.size(address(cd[100]))
    call address(cd[100]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _43, cd[36], Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len floor32(('cd', 164).length)]), address(this.address), block.timestamp + 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _19) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _19) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _51 = mem[(32 * _19) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _43) >> 32
    require mem[(32 * _19) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _43) >> 32 <= 4294967296
    require mem[(32 * _19) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _43) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _19) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _43) >> 32 + (32 * _19) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _19) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _43) >> 32 + (32 * mem[mem[(32 * _19) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _43) >> 32 + (32 * _19) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
    mem[(32 * _19) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _19) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _43) >> 32 + (32 * _19) + ceil32(return_data.size) + 128]
    mem[(32 * _19) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_51 + (32 * _19) + ceil32(return_data.size) + 128])] = mem[_51 + (32 * _19) + ceil32(return_data.size) + 160 len floor32(mem[_51 + (32 * _19) + ceil32(return_data.size) + 128])]
    require 1 < mem[(32 * _19) + (2 * ceil32(return_data.size)) + 128]
    require ext_code.size(address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]))
    call address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, mem[(32 * _19) + (2 * ceil32(return_data.size)) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
