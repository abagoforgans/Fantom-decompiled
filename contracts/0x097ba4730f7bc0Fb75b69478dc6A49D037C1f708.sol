contract main {




// =====================  Runtime code  =====================


address rarityAddress;
array of uint256 stor1;

function rarity() payable {
    return rarityAddress
}

function _fallback() payable {
    revert
}

function sub_6d1a0fc5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor1[address(arg1)]:
        if idx >= stor1[address(arg1)]:
            revert with 0, 50
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = stor1[address(arg1)][idx]
        require ext_code.size(rarityAddress)
        call rarityAddress.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args stor1[address(arg1)][idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        mem[0] = address(arg1)
        mem[32] = 1
        idx = idx + 1
        continue 
}

function sub_6e6d086f(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        mem[32] = 1
        if idx >= ('cd', 4).length:
            revert with 0, 50
        stor1[msg.sender]++
        mem[0] = sha3(msg.sender, 1)
        stor1[msg.sender][stor1[msg.sender]] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
