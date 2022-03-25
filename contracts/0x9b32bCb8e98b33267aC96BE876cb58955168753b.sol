contract main {


// =======================  Init code  ======================


mapping of struct stor1;
uint256 stor2;

function _fallback() {
    stor2++
    stor1[stor2].field_0 = stor2
    stor1[stor2].field_256 = 0
    stor1[stor2].field_257 = 11
    stor1[stor2].field_264 = 'Candidate 1' / 256
    idx = 0
    while stor1[stor2][1].length + 31 / 32 > idx:
        stor1[stor2][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    stor1[stor2].field_512 = 0
    stor2++
    stor1[stor2].field_0 = stor2
    stor1[stor2].field_256 = 0
    stor1[stor2].field_257 = 11
    stor1[stor2].field_264 = 'Candidate 2' / 256
    idx = 0
    while stor1[stor2][1].length + 31 / 32 > idx:
        stor1[stor2][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    stor1[stor2].field_512 = 0
    return code.data[487 len 1162]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of struct candidates;
uint256 candidatesCount;

function candidatesCount() {
    return candidatesCount
}

function candidates(uint256 arg1) {
    mem[224] = candidates[arg1][1].field_0
    idx = 224
    s = 0
    while candidates[arg1][1].length + 224 > idx + 32:
        mem[idx + 32] = candidates[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return candidates[arg1].field_0, 
           Array(len=candidates[arg1][1].length, data=mem[224 len candidates[arg1][1].length + (floor32(candidates[arg1][1].length - 1) + -candidates[arg1][1].length + 32 % 32)]),
           candidates[arg1].field_512
}

function voters(address arg1) {
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function vote(uint256 arg1) {
    require not stor0[address(msg.sender)]
    require arg1 > 0
    require arg1 <= candidatesCount
    stor0[address(msg.sender)] = 1
    candidates[arg1].field_512++
    emit votedEvent(arg1);
}



}
