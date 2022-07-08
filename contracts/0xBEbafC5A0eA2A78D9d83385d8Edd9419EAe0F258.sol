contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
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
            mem[s + _10 + 36] = mem[_10 + s + 32]
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
