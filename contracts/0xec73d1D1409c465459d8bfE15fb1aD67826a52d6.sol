contract main {




// =====================  Runtime code  =====================


#
#  - sub_c2169c1a(?)
#
const name = 'Rarity Personal Daycare', 0

const symbol = 'RPD', 0


address stor0;
array of uint256 stor1;
mapping of uint8 stor2;

function registrations(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function registration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    if stor2[arg1]:
        emit 0xbde2f3cc: msg.sender, arg1
    else:
        stor2[arg1] = 1
        stor1.length++
        stor1[stor1.length] = arg1
        emit 0x1ee24412: msg.sender, arg1
}

function sub_fc101d9b(?) payable {
    require msg.sender == stor0
    idx = 0
    while idx < stor1.length:
        mem[0] = stor1[idx]
        mem[32] = 2
        stor2[stor1[idx]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = stor1.length
    while idx > 0:
        if idx < 1:
            revert with 'NH{q', 17
        if stor1.length < 1:
            revert with 'NH{q', 17
        if stor1.length - 1 >= stor1.length:
            revert with 'NH{q', 50
        if idx - 1 >= stor1.length:
            revert with 'NH{q', 50
        stor1[idx] = stor1[stor1.length]
        if not stor1.length:
            revert with 'NH{q', 49
        mem[0] = 1
        stor1[stor1.length] = 0
        stor1.length--
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
    emit 0x10ca4b3f 
}

function sub_29bc6494(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require msg.sender == stor0
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 2
        if stor2[cd[((32 * idx) + cd[4] + 36)]]:
            mem[96] = msg.sender
            mem[128] = cd[((32 * idx) + cd[4] + 36)]
            emit 0xbde2f3cc: msg.sender, cd[((32 * idx) + cd[4] + 36)]
        else:
            mem[32] = 2
            stor2[cd[((32 * idx) + cd[4] + 36)]] = 1
            stor1.length++
            mem[0] = 1
            stor1[stor1.length] = cd[((32 * idx) + cd[4] + 36)]
            mem[96] = msg.sender
            mem[128] = cd[((32 * idx) + cd[4] + 36)]
            emit 0x1ee24412: msg.sender, cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
