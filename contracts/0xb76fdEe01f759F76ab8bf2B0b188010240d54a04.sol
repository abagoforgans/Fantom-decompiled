contract main {




// =====================  Runtime code  =====================


array of uint256 stor0;
uint256 stor1;
array of struct stor2;

function _fallback() payable {
    revert
}

function sub_074a943b(?) payable {
    idx = 0
    while idx < stor1:
        require idx < stor0.length
        require idx < stor2.length
        mem[0] = 2
        stor2[idx].field_0 = stor0[idx]
        idx = idx + 1
        continue 
}

function sub_005f92a7(?) payable {
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = uint256(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
    return Array(len=stor2.length, data=mem[128 len floor32(stor2.length)], mem[(32 * stor2.length) + floor32(stor2.length) + 192 len (32 * stor2.length) - floor32(stor2.length)]), 
}



}
