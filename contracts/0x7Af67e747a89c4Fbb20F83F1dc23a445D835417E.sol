contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct messageByIndexForRoom;
array of uint256 usernameFor;

function getMessageByIndexForRoom(string arg1, uint256 arg2) {
    mem[192 len arg1.length] = arg1[all]
    mem[arg1.length + 192] = 1
    require arg2 < messageByIndexForRoom[arg1[all]].field_0
    mem[320] = messageByIndexForRoom[arg1[all]][arg2].field_0
    idx = 320
    s = 0
    while messageByIndexForRoom[arg1[all]][arg2].length + 320 > idx + 32:
        mem[idx + 32] = messageByIndexForRoom[arg1[all]][(3 * arg2) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=messageByIndexForRoom[arg1[all]][arg2].length, data=mem[320 len messageByIndexForRoom[arg1[all]][arg2].length]), 
           messageByIndexForRoom[arg1[all]][arg2].field_256,
           messageByIndexForRoom[arg1[all]][arg2].field_512
}

function getUsernameForAddress(address arg1) {
    return usernameFor[address(arg1)][0 len usernameFor[address(arg1)].length]
}

function getMessageCountForRoom(string arg1) {
    return messageByIndexForRoom[arg1[all]].field_0
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function createUser(string arg1) {
    usernameFor[msg.sender] = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        usernameFor[msg.sender][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while usernameFor[msg.sender].length + 31 / 32 > idx:
        usernameFor[msg.sender][idx] = 0
        idx = idx + 1
        continue 
}

function sendMessage(string arg1, string arg2) {
    messageByIndexForRoom[arg2[all]].field_0++
    messageByIndexForRoom[arg2[all]][messageByIndexForRoom[arg2[all]].field_0][].field_0 = Array(len=arg1.length, data=arg1[all])
    messageByIndexForRoom[arg2[all]][messageByIndexForRoom[arg2[all]].field_0].field_256 = msg.sender
    messageByIndexForRoom[arg2[all]][messageByIndexForRoom[arg2[all]].field_0].field_512 = block.timestamp
    emit NewMessage(Array(len=arg1.length, data=arg1[all]), msg.sender, block.timestamp, arg1.length + 160);
}



}
