contract main {




// =====================  Runtime code  =====================


address stor0;
address owner;
array of struct sub_d38b576d;

function owner() {
    return owner
}

function sub_d38b576d(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_d38b576d.length
    return sub_d38b576d[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_bbf6290c(?) {
    require msg.sender == owner
    # nil
}

function sub_16a2feac(?) payable {
    require calldata.size - 4 >= 32
    require msg.value == arg1
}

function sub_e04b61bc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require msg.sender == owner
    require msg.value == arg2
    require msg.value <= eth.balance(this.address)
    call address(arg1) with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c6ea7ebb(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        sub_d38b576d.length++
        mem[0] = 2
        sub_d38b576d[sub_d38b576d.length].field_0 = cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_6bbfe5c1(?) {
    idx = 0
    while idx < sub_d38b576d.length:
        mem[0] = 2
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = sub_d38b576d[idx].field_0
        require ext_code.size(stor0)
        call stor0.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args sub_d38b576d[idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_568d4f99(?) {
    if sub_d38b576d.length:
        mem[128] = uint256(sub_d38b576d.field_0)
        idx = 128
        s = 0
        while (32 * sub_d38b576d.length) + 96 > idx:
            mem[idx + 32] = sub_d38b576d[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_d38b576d.length, data=mem[128 len 32 * sub_d38b576d.length])
    mem[(32 * sub_d38b576d.length) + 128] = 32
    mem[(32 * sub_d38b576d.length) + 160] = sub_d38b576d.length
    mem[(32 * sub_d38b576d.length) + 192 len 32 * sub_d38b576d.length] = mem[128 len 32 * sub_d38b576d.length]
    return memory
      from (32 * sub_d38b576d.length) + 128
       len (96 * sub_d38b576d.length) + 64
}



}
