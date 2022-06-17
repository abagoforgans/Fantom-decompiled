contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of uint256 operators;

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return operators[arg1]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != tx.origin:
        revert with 0, 'only Owner'
    stor1 = arg1
}

function sub_c64c39a9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if operators[tx.origin] != 1:
        revert with 0, 'only Operator!'
    require ext_code.size(stor0)
    call stor0.0xa22cb465 with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_14d8c8e4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if operators[tx.origin] != 1:
        revert with 0, 'only Operator!'
    idx = 0
    while idx < arg1:
        mem[96] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[100] = arg2
        require ext_code.size(stor0)
        call stor0.summon(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_ecdf681f(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if operators[tx.origin] != 1:
        revert with 0, 'only Operator!'
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        call stor0.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_e861aafa(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if operators[tx.origin] != 1:
        revert with 0, 'only Operator!'
    idx = 0
    while idx < ('cd', 36).length:
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = address(cd[4])
        mem[164] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(stor0)
        call stor0.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(cd[4]), cd[((32 * idx) + cd[36] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_adb574d4(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if operators[tx.origin] != 1:
        revert with 0, 'only Operator!'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        operators[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
