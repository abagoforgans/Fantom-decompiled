contract main {




// =====================  Runtime code  =====================


address stor0;
address adminAddress;
mapping of uint256 sub_d38b576d;
mapping of uint8 stor3;
uint256 sub_7ae1aed8;

function sub_1441ddfa(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function sub_5290d68f(?) payable {
    require calldata.size - 4 >= 32
    return sub_d38b576d[arg1]
}

function sub_7ae1aed8(?) payable {
    return sub_7ae1aed8
}

function sub_d38b576d(?) payable {
    require calldata.size - 4 >= 32
    return sub_d38b576d[arg1]
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_9fa27ca9(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require msg.sender == adminAddress
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        staticcall stor0.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_10] == mem[_10 + 12 len 20]
        require mem[_10 + 12 len 20] == msg.sender
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require not stor3[cd[((32 * idx) + cd[4] + 36)]]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        sub_d38b576d[idx] = cd[((32 * idx) + cd[4] + 36)]
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 3
        stor3[cd[((32 * idx) + cd[4] + 36)]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if sub_7ae1aed8 > !('cd', 4).length:
        revert with 0, 17
    sub_7ae1aed8 += ('cd', 4).length
}



}
