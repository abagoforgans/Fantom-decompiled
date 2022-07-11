contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == stor0)
}

function sub_fa15c887(?) payable {
    require calldata.size - 4 >= 160
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x5946756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65,
                    mem[201 len 27]
    require ext_code.size(stor3)
    staticcall stor3.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), 128, 32, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_39054166(?) payable {
    require calldata.size - 4 >= 160
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x5946756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65,
                    mem[201 len 27]
    mem[160] = arg1
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    if not arg2:
        mem[196] = arg3
        mem[228] = 0
        mem[292] = this.address
        mem[324] = arg4
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, address(this.address), arg4, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _42 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _48 = mem[_42 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_42 + 192])] = mem[_42 + 224 len floor32(mem[_42 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        mem[(32 * _48) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
        emit Profit(mem[(32 * _48) + ceil32(return_data.size) + 224]);
    else:
        mem[196] = arg2
        mem[228] = 0
        mem[292] = this.address
        mem[324] = arg4
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, address(this.address), arg4, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _44 = mem[192 len 4], Mask(224, 32, arg2) >> 32
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        _49 = mem[_44 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_44 + 192])] = mem[_44 + 224 len floor32(mem[_44 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        mem[(32 * _49) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
        emit Profit(mem[(32 * _49) + ceil32(return_data.size) + 224]);
}

function sub_81bab9ff(?) payable {
    require calldata.size - 4 >= 160
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x5946756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65,
                    mem[201 len 27]
    mem[160] = arg1
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    if not arg2:
        mem[196] = arg3
        mem[228] = 0
        mem[292] = this.address
        mem[324] = arg4
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(stor2)
        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, address(this.address), arg4, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _42 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _48 = mem[_42 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_42 + 192])] = mem[_42 + 224 len floor32(mem[_42 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        mem[(32 * _48) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
        emit Profit(mem[(32 * _48) + ceil32(return_data.size) + 224]);
    else:
        mem[196] = arg2
        mem[228] = 0
        mem[292] = this.address
        mem[324] = arg4
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(stor2)
        call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, address(this.address), arg4, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _44 = mem[192 len 4], Mask(224, 32, arg2) >> 32
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        _49 = mem[_44 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_44 + 192])] = mem[_44 + 224 len floor32(mem[_44 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        mem[(32 * _49) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
        emit Profit(mem[(32 * _49) + ceil32(return_data.size) + 224]);
}



}
