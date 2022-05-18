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
                    'This function is restricted to the contract's owner'
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
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    selfdestruct(stor0)
}

function sub_d44d9bc1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_9eba4885(?) payable {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
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
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    require cd[164] <= test266151307()
    require cd[164] + 195 < calldata.size
    if ('cd', 164)[4] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 164)[4]) + 97 < 96 or ceil32(32 * ('cd', 164)[4]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 164)[4]
    require cd[164] + (32 * ('cd', 164)[4]) + 196 <= calldata.size
    idx = 0
    s = cd[164] + 196
    t = 128
    while idx < ('cd', 164)[4]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[228] == address(cd[228])
    require cd[260] <= test266151307()
    require cd[260] + 195 < calldata.size
    if ('cd', 260)[4] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 260)[4]) + 98 < 97 or ceil32(32 * ('cd', 164)[4]) + ceil32(32 * ('cd', 260)[4]) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 164)[4]) + 97] = ('cd', 260)[4]
    require cd[260] + (32 * ('cd', 260)[4]) + 196 <= calldata.size
    idx = 0
    s = cd[260] + 196
    t = ceil32(32 * ('cd', 164)[4]) + 129
    while idx < ('cd', 260)[4]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 164)[4] < 1:
        revert with 'NH{q', 17
    if 0 >= ('cd', 164)[4]:
        revert with 'NH{q', 50
    if 0 >= ('cd', 260)[4]:
        revert with 'NH{q', 50
    _74 = mem[ceil32(32 * ('cd', 164)[4]) + 129]
    mem[ceil32(32 * ('cd', 164)[4]) + ceil32(32 * ('cd', 260)[4]) + 102] = mem[140 len 20]
    mem[ceil32(32 * ('cd', 164)[4]) + ceil32(32 * ('cd', 260)[4]) + 134] = _74
    require ext_code.size(address(cd[228]))
    call address(cd[228]).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[ceil32(32 * ('cd', 164)[4]) + ceil32(32 * ('cd', 260)[4]) + 102], _74
    mem[ceil32(32 * ('cd', 164)[4]) + ceil32(32 * ('cd', 260)[4]) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 164)[4]) + ceil32(32 * ('cd', 260)[4]) + ceil32(return_data.size) + 98
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    while uint8(idx) < uint8(('cd', 164)[4] - 1):
        if 1 > -uint8(idx) + 255:
            revert with 'NH{q', 17
        if uint8(idx) >= mem[96]:
            revert with 'NH{q', 50
        if not cd[196] or not 1:
            _105 = mem[(32 * uint8(idx)) + 128]
            if uint8(uint8(idx) + 1) >= mem[ceil32(32 * ('cd', 164)[4]) + 97]:
                revert with 'NH{q', 50
            _109 = mem[(32 * uint8(uint8(idx) + 1)) + ceil32(32 * ('cd', 164)[4]) + 129]
            if uint8(uint8(idx) + 1) >= mem[96]:
                revert with 'NH{q', 50
            _113 = mem[(32 * uint8(uint8(idx) + 1)) + 128]
            _115 = mem[64]
            mem[64] = mem[64] + 32
            mem[_115 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_115 + 36] = _109
            mem[_115 + 68] = 0
            mem[_115 + 100] = address(_113)
            mem[_115 + 132] = 128
            mem[_115 + 164] = mem[_115]
            s = 0
            while s < mem[_115]:
                mem[s + _115 + 196] = mem[_115 + s + 32]
                s = s + 32
                continue 
            if ceil32(mem[_115]) > mem[_115]:
                mem[_115 + mem[_115] + 196] = 0
            require ext_code.size(address(_105))
            call address(_105).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _109, 0, address(_113), 128, mem[_115], mem[_115 + 196 len ceil32(mem[_115])]
        else:
            _107 = mem[(32 * uint8(idx)) + 128]
            if uint8(uint8(idx) + 1) >= mem[ceil32(32 * ('cd', 164)[4]) + 97]:
                revert with 'NH{q', 50
            _111 = mem[(32 * uint8(uint8(idx) + 1)) + ceil32(32 * ('cd', 164)[4]) + 129]
            if uint8(uint8(idx) + 1) >= mem[96]:
                revert with 'NH{q', 50
            _114 = mem[(32 * uint8(uint8(idx) + 1)) + 128]
            _116 = mem[64]
            mem[64] = mem[64] + 32
            mem[_116 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_116 + 36] = 0
            mem[_116 + 68] = _111
            mem[_116 + 100] = address(_114)
            mem[_116 + 132] = 128
            mem[_116 + 164] = mem[_116]
            s = 0
            while s < mem[_116]:
                mem[s + _116 + 196] = mem[_116 + s + 32]
                s = s + 32
                continue 
            if ceil32(mem[_116]) > mem[_116]:
                mem[_116 + mem[_116] + 196] = 0
            require ext_code.size(address(_107))
            call address(_107).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _111, address(_114), 128, mem[_116], mem[_116 + 196 len ceil32(mem[_116])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
}



}
