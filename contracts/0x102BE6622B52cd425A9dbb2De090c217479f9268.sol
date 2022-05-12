contract main {




// =====================  Runtime code  =====================


#
#  - sub_551bfb6e(?)
#
address stor0;
address stor1;

function bye() payable {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x65546869732066756e6374696f6e206973207265737472696374656420746f2074686520636f6e74726163742773206f776e65,
                    mem[215 len 13]
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    selfdestruct(stor0)
}

function sub_d44d9bc1(?) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x65546869732066756e6374696f6e206973207265737472696374656420746f2074686520636f6e74726163742773206f776e65,
                    mem[215 len 13]
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_9eba4885(?) payable {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x65546869732066756e6374696f6e206973207265737472696374656420746f2074686520636f6e74726163742773206f776e65,
                    mem[215 len 13]
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require 164 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 164 >= 128
    require cd[164] <= 4294967296
    require cd[164] + 196 <= calldata.size
    require ('cd', 164)[4] <= 4294967296 and cd[164] + (32 * ('cd', 164)[4]) + 196 <= calldata.size
    mem[96] = ('cd', 164)[4]
    mem[128 len 32 * ('cd', 164)[4]] = call.data[cd[164] + 196 len 32 * ('cd', 164)[4]]
    require cd[260] <= 4294967296
    require cd[260] + 196 <= calldata.size
    require ('cd', 260)[4] <= 4294967296 and cd[260] + (32 * ('cd', 260)[4]) + 196 <= calldata.size
    mem[64] = (32 * ('cd', 164)[4]) + (32 * ('cd', 260)[4]) + 160
    mem[(32 * ('cd', 164)[4]) + 128] = ('cd', 260)[4]
    mem[(32 * ('cd', 164)[4]) + 160 len 32 * ('cd', 260)[4]] = call.data[cd[260] + 196 len 32 * ('cd', 260)[4]]
    mem[(32 * ('cd', 164)[4]) + (32 * ('cd', 260)[4]) + 160] = 0
    require ('cd', 164)[4]
    require 0 < ('cd', 260)[4]
    _6 = mem[(32 * ('cd', 164)[4]) + 160]
    mem[(32 * ('cd', 164)[4]) + (32 * ('cd', 260)[4]) + 164] = mem[140 len 20]
    mem[(32 * ('cd', 164)[4]) + (32 * ('cd', 260)[4]) + 196] = Mask(112, 0, _6)
    require ext_code.size(address(cd[228]))
    call address(cd[228]).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[140 len 20], _6 << 144
    mem[(32 * ('cd', 164)[4]) + (32 * ('cd', 260)[4]) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while uint8(idx) < uint8(('cd', 164)[4] - 1):
        require uint8(idx) < mem[96]
        if not cd[196] or not 1:
            _40 = mem[(32 * uint8(idx)) + 128]
            require uint8(idx + 1) < mem[(32 * ('cd', 164)[4]) + 128]
            _44 = mem[(32 * uint8(idx + 1)) + (32 * ('cd', 164)[4]) + 160]
            require uint8(idx + 1) < mem[96]
            _48 = mem[(32 * uint8(idx + 1)) + 128]
            _50 = mem[64]
            mem[64] = mem[64] + 32
            mem[_50 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_50 + 36] = Mask(112, 0, _44)
            mem[_50 + 68] = 0
            mem[_50 + 100] = address(_48)
            mem[_50 + 132] = 128
            mem[_50 + 164] = mem[_50]
            s = 0
            while s < mem[_50]:
                mem[s + _50 + 196] = mem[s + _50 + 32]
                s = s + 32
                continue 
            if not mem[_50] % 32:
                require ext_code.size(address(_40))
                call address(_40).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _44 << 144, 0, address(_48), 128, mem[_50 + 164 len mem[_50] + 32]
            else:
                mem[floor32(mem[_50]) + _50 + 196] = mem[floor32(mem[_50]) + _50 + -(mem[_50] % 32) + 228 len mem[_50] % 32]
                require ext_code.size(address(_40))
                call address(_40).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _44 << 144, 0, address(_48), 128, mem[_50], mem[_50 + 196 len floor32(mem[_50]) + 32]
        else:
            _42 = mem[(32 * uint8(idx)) + 128]
            require uint8(idx + 1) < mem[(32 * ('cd', 164)[4]) + 128]
            _46 = mem[(32 * uint8(idx + 1)) + (32 * ('cd', 164)[4]) + 160]
            require uint8(idx + 1) < mem[96]
            _49 = mem[(32 * uint8(idx + 1)) + 128]
            _51 = mem[64]
            mem[64] = mem[64] + 32
            mem[_51 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_51 + 36] = 0
            mem[_51 + 68] = Mask(112, 0, _46)
            mem[_51 + 100] = address(_49)
            mem[_51 + 132] = 128
            mem[_51 + 164] = mem[_51]
            s = 0
            while s < mem[_51]:
                mem[s + _51 + 196] = mem[s + _51 + 32]
                s = s + 32
                continue 
            if not mem[_51] % 32:
                require ext_code.size(address(_42))
                call address(_42).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _46 << 144, address(_49), 128, mem[_51 + 164 len mem[_51] + 32]
            else:
                mem[floor32(mem[_51]) + _51 + 196] = mem[floor32(mem[_51]) + _51 + -(mem[_51] % 32) + 228 len mem[_51] % 32]
                require ext_code.size(address(_42))
                call address(_42).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _46 << 144, address(_49), 128, mem[_51], mem[_51 + 196 len floor32(mem[_51]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
