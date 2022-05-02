contract main {




// =====================  Runtime code  =====================


#
#  - sub_21ee0fec(?)
#  - sub_78f9485b(?)
#
address owner;
mapping of address stor1;

function owner() {
    return owner
}

function destroy() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdrawEth() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address):
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function checkBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a4b01365(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != tx.origin:
        revert with 0, 'Unauthorized 1'
    mem[192] = 2
    mem[128] = address(arg1)
    mem[160] = 0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270
    mem[224] = 0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270
    mem[256] = address(arg1)
    idx = 0
    s = 128
    t = 512
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 224
    t = 608
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor1[address(arg1)])
    call stor1[address(arg1)].flashLoan(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args address(this.address), 10^18, 96, 352, 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506, 0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff, 160, 256, 10^18, 2, mem[512 len 64], 2, mem[608 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if owner != tx.origin:
        revert with 0, 'Unauthorized'
    require ext_code.size(this.address)
    call this.address.0x7ca79a48 with:
         gas gas_remaining wei
        args Array(len=arg5.length, data=arg5[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg3 > !arg4:
        revert with 0, 17
    require ext_code.size(arg2)
    call arg2.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg3 + arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer fund back failed'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg4:
        revert with 0, 17
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tx.origin, ext_call.return_data[0] - arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer 2 failed'
}

function sub_7ca79a48(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if owner != tx.origin:
        revert with 0, 'Unauthorized 2'
    require ('cd', 4).length >= 160
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4)[2] <= test266151307()
    require cd[4] + ('cd', 4)[2] + 67 < cd[4] + ('cd', 4).length + 36
    if cd[(cd[4] + ('cd', 4)[2] + 36)] > test266151307():
        revert with 0, 65
    if floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + 97 < 96 or floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + 97 > test266151307():
        revert with 0, 65
    mem[96] = cd[(cd[4] + ('cd', 4)[2] + 36)]
    require ('cd', 4).length + 36 >= ('cd', 4)[2] + (32 * cd[(cd[4] + ('cd', 4)[2] + 36)]) + 68
    idx = 0
    s = cd[4] + ('cd', 4)[2] + 68
    t = 128
    while idx < cd[(cd[4] + ('cd', 4)[2] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 4)[3] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 67 < cd[4] + ('cd', 4).length + 36
    if cd[(cd[4] + ('cd', 4)[3] + 36)] > test266151307():
        revert with 0, 65
    if floor32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 98 < 97 or floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + floor32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 98 > test266151307():
        revert with 0, 65
    mem[floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + 97] = cd[(cd[4] + ('cd', 4)[3] + 36)]
    require ('cd', 4).length + 36 >= ('cd', 4)[3] + (32 * cd[(cd[4] + ('cd', 4)[3] + 36)]) + 68
    idx = 0
    s = cd[4] + ('cd', 4)[3] + 68
    t = floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + 129
    while idx < cd[(cd[4] + ('cd', 4)[3] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= cd[(cd[4] + ('cd', 4)[2] + 36)]:
        revert with 0, 50
    _87 = mem[128]
    mem[floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + floor32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 102] = address(('cd', 4)[0])
    mem[floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + floor32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 134] = ('cd', 4)[4]
    require ext_code.size(address(_87))
    call address(_87).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(('cd', 4)[0]), ('cd', 4)[4]
    mem[floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + floor32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + floor32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 98
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token approve failed'
    mem[floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + floor32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 98] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + floor32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 102] = ('cd', 4)[4]
    mem[floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + floor32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 134] = 0
    mem[floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + floor32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 166] = 160
    mem[floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + floor32(cd[(cd[4] + ('cd', 4)[3] + 36)]) + ceil32(return_data.size) + 262] = cd[(cd[4] + ('cd', 4)[2] + 36)]
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * cd[(cd[4] + ('cd', 4)[2] + 36)]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _128 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _129 = mem[_128]
    require mem[_128] <= test266151307()
    require _128 + return_data.size > _128 + mem[_128] + 31
    _130 = mem[_128 + mem[_128]]
    if mem[_128 + mem[_128]] > test266151307():
        revert with 0, 65
    if floor32(mem[_128 + mem[_128]]) + 1 < 0 or _128 + ceil32(return_data.size) + floor32(mem[_128 + mem[_128]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _128 + ceil32(return_data.size) + floor32(mem[_128 + mem[_128]]) + 1
    mem[_128 + ceil32(return_data.size)] = _130
    require return_data.size >= _129 + (32 * _130) + 32
    mem[_128 + ceil32(return_data.size) + 32 len 32 * _130] = mem[_128 + _129 + 32 len 32 * _130]
    if 1 >= _130:
        revert with 0, 50
    _158 = mem[_128 + ceil32(return_data.size) + 64]
    if 0 >= mem[floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + 97]:
        revert with 0, 50
    _160 = mem[floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + 129]
    mem[mem[64] + 4] = address(('cd', 4)[1])
    mem[mem[64] + 36] = _158
    require ext_code.size(address(_160))
    call address(_160).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(('cd', 4)[1]), _158
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _163 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_163] == bool(mem[_163])
    if not mem[_163]:
        revert with 0, 'Token approve 2 failed'
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _158
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _167 = mem[floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + 97]
    mem[mem[64] + 164] = mem[floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + 97]
    idx = 0
    s = floor32(cd[(cd[4] + ('cd', 4)[2] + 36)]) + 129
    t = mem[64] + 196
    while idx < _167:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(address(('cd', 4)[1]))
    call address(('cd', 4)[1]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _158, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _167) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _182 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _183 = mem[_182]
    require mem[_182] <= test266151307()
    require _182 + return_data.size > _182 + mem[_182] + 31
    _184 = mem[_182 + mem[_182]]
    if mem[_182 + mem[_182]] > test266151307():
        revert with 0, 65
    if floor32(mem[_182 + mem[_182]]) + 1 < 0 or _182 + ceil32(return_data.size) + floor32(mem[_182 + mem[_182]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _182 + ceil32(return_data.size) + floor32(mem[_182 + mem[_182]]) + 1
    mem[_182 + ceil32(return_data.size)] = _184
    require return_data.size >= _183 + (32 * _184) + 32
    mem[_182 + ceil32(return_data.size) + 32 len 32 * _184] = mem[_182 + _183 + 32 len 32 * _184]
    if 0 >= mem[96]:
        revert with 0, 50
    mem[mem[64]] = mem[140 len 20]
    return memory
      from mem[64]
       len 32
}



}
