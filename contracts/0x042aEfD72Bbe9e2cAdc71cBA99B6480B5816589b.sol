contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Wrong owner'
    stor0 = arg1
}

function sub_513f08e2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor0 != msg.sender:
        revert with 0, 'Wrong owner'
    stor1[address(arg1)] = uint8(bool(arg2))
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Wrong owner'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 != msg.sender:
        revert with 0, 'Wrong owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_bc83df1e(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == address(arg6)
    require arg7 == arg7
    require arg8 == arg8
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Wut?'
    mem[96] = 2
    mem[64] = 192
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    idx = 0
    while idx < arg8:
        _12 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg4
        mem[mem[64] + 36] = arg5
        mem[mem[64] + 68] = 160
        _13 = mem[96]
        mem[mem[64] + 164] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 196
        while s < _13:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_12 + 100] = address(arg6)
        mem[_12 + 132] = arg7
        require ext_code.size(address(arg1))
        call address(arg1).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _12 + (32 * _13) + -mem[64] + 192]
        if not ext_call.success:
        if idx == 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_c2bf510c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] == address(cd[132])
    require cd[164] == cd[164]
    require cd[196] == cd[196]
    mem[0] = msg.sender
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Wut?'
    idx = 0
    while idx < cd[196]:
        _7 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[68]
        mem[mem[64] + 36] = cd[100]
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 36).length
        s = 0
        t = cd[36] + 36
        u = mem[64] + 196
        while s < ('cd', 36).length:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_7 + 100] = address(cd[132])
        mem[_7 + 132] = cd[164]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _7 + (32 * ('cd', 36).length) + -mem[64] + 192]
        if not ext_call.success:
        if idx == 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_82873486(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] == address(cd[132])
    require cd[164] == cd[164]
    require cd[196] == cd[196]
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Wut?'
    idx = 0
    while idx < cd[196]:
        _12 = mem[64]
        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[68]
        mem[mem[64] + 36] = cd[100]
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 36).length
        s = 0
        t = cd[36] + 36
        u = mem[64] + 196
        while s < ('cd', 36).length:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_12 + 100] = address(cd[132])
        mem[_12 + 132] = cd[164]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _12 + (32 * ('cd', 36).length) + -mem[64] + 192]
        if not ext_call.success:
        _21 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _23 = mem[_21]
        require mem[_21] <= test266151307()
        require _21 + mem[_21] + 31 < _21 + return_data.size
        _24 = mem[_21 + mem[_21]]
        if mem[_21 + mem[_21]] > test266151307():
            revert with 'NH{q', 65
        if _21 + ceil32(return_data.size) + floor32(mem[_21 + mem[_21]]) + 1 > test266151307() or floor32(mem[_21 + mem[_21]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _21 + ceil32(return_data.size) + floor32(mem[_21 + mem[_21]]) + 1
        mem[_21 + ceil32(return_data.size)] = _24
        require _23 + (32 * _24) + 32 <= return_data.size
        s = 0
        t = _21 + _23 + 32
        u = _21 + ceil32(return_data.size) + 32
        while s < _24:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if idx == 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
