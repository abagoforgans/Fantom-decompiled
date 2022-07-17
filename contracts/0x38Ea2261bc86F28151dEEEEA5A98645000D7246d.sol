contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 nextUser;
mapping of uint8 stor6;
mapping of address userIds;

function userList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function userIds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userIds[arg1]
}

function nextUser() {
    return nextUser
}

function sub_eae6d4da(?) {
    return bool(stor6[address(msg.sender)])
}

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == stor2
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function register() payable {
    if msg.value < stor3:
        revert with 0, 'Minimum fee is 1 FTM'
    if msg.value > stor4:
        revert with 0, 'Maximum fee is 2 FTM'
    if nextUser >= stor0:
        revert with 0, 'Max users reached'
    if stor6[address(msg.sender)]:
        revert with 0, 'User already in our SYSTEM'
    stor6[address(msg.sender)] = 1
    userIds[stor5] = msg.sender
    if nextUser == -1:
        revert with 'NH{q', 17
    nextUser++
}

function getAll() {
    if stor0 > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor0
    mem[64] = (32 * stor0) + 128
    if stor0:
        mem[128 len 32 * stor0] = call.data[calldata.size len 32 * stor0]
    idx = 0
    while idx < stor0:
        mem[0] = idx
        mem[32] = 7
        if idx >= stor0:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = userIds[idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * stor0) + 128] = 32
    mem[(32 * stor0) + 160] = stor0
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor0:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor0) + -mem[64] + 192
}



}
