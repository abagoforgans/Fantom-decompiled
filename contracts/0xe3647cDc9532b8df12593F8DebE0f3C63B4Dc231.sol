contract main {




// =====================  Runtime code  =====================


const sub_3aa2a062(?) = 5 * 10^16


address stor0;
address stor1;
mapping of uint256 sub_1bd29448;
mapping of uint8 stor3;

function sub_1bd29448(?) {
    require calldata.size - 4 >= 32
    return sub_1bd29448[arg1]
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor1
    stor1 = arg1
}

function removeWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor1
    stor3[address(arg1)] = 0
}

function enableWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor1
    stor3[address(arg1)] = 1
}

function sub_be774a71(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require 1 == bool(stor3[msg.sender])
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 2
        if sub_1bd29448[cd[((32 * idx) + cd[4] + 36)]] < 1:
            revert with 0, 17
        sub_1bd29448[cd[((32 * idx) + cd[4] + 36)]]--
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[96] = msg.sender
        mem[128] = cd[((32 * idx) + cd[4] + 36)]
        emit 0x336be4dd: msg.sender, cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(stor0)
    call stor0.0xecdf681f with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ('cd', 4).length and 5 * 10^16 > -1 / ('cd', 4).length:
        revert with 0, 17
    call msg.sender with:
       value 5 * 10^16 * ('cd', 4).length wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_42c0b3ee(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'DCM: Invalid lengths'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[((32 * idx) + cd[36] + 36)] <= 0:
            revert with 0, 'DCM: Cannot daycare for 0 days'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 2
        if sub_1bd29448[cd[((32 * idx) + cd[4] + 36)]] > !cd[((32 * idx) + cd[36] + 36)]:
            revert with 0, 17
        sub_1bd29448[cd[((32 * idx) + cd[4] + 36)]] += cd[((32 * idx) + cd[36] + 36)]
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[((32 * idx) + cd[36] + 36)] and 5 * 10^16 > -1 / cd[((32 * idx) + cd[36] + 36)]:
            revert with 0, 17
        if s > !(5 * 10^16 * cd[((32 * idx) + cd[36] + 36)]):
            revert with 0, 17
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 64] = cd[((32 * idx) + cd[36] + 36)]
        emit 0x5603efb8: msg.sender, cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (5 * 10^16 * cd[((32 * idx) + cd[36] + 36)])
        continue 
    if msg.value < s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length:
        revert with 0, 'DCM: Insufficient fee'
}



}
