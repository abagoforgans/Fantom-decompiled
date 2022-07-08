contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address stor0;
uint256 stor0;
address stor1;

function sub_39457d00(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[196 len 96] = 3272566442, Mask(224, 0, stor0), uint32(stor0), arg2, mem[196 len 28]
    delegate address(arg1).mem[196 len 4] with:
         gas gas_remaining wei
        args mem[200 len 64]
}

function _fallback() payable {
    require ext_code.size(msg.sender)
    call msg.sender.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor0), eth.balance(msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function call(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == address(stor0)
    require arg1
    mem[164 len 64] = transferTo(address arg1), Mask(224, 0, stor0), uint32(stor0), mem[164 len 28]
    call arg1.mem[164 len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[168]
    require ext_call.success
    if not return_data.size:
        return 32, 36, transferTo(address arg1), Mask(224, 0, stor0), uint32(stor0), 0 >> 32, 0
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor0)
    if stor1 == arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c724c48e(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        _10 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_10 + 32] = 0xfdb5a03e00000000000000000000000000000000000000000000000000000000 or mem[_10 + 36 len 28]
        s = 0
        while s < mem[_10]:
            mem[s + _10 + 36] = mem[s + _10 + 32]
            s = s + 32
            continue 
        if ceil32(mem[_10]) <= mem[_10]:
            delegate address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len mem[_10] + _10 + -mem[64] + 32]
            if return_data.size:
                _21 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_21] = return_data.size
                mem[_21 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_10 + mem[_10] + 36] = 0
            delegate address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len mem[_10] + _10 + -mem[64] + 32]
            if return_data.size:
                _23 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_23] = return_data.size
                mem[_23 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
