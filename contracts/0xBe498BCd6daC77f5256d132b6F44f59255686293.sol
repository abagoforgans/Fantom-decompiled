contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const getCut = (eth.balance(this.address) / 10)


address managerAddress;
uint256 stor0;
array of struct players;
uint256 tickets;

function tickets() {
    return tickets
}

function manager() {
    return address(managerAddress)
}

function sub_e5973538(?) {
    return players.length
}

function players(uint256 arg1) {
    require arg1 < players.length
    return players[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_6fe112ee(?) {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function enter() payable {
    require msg.value > 10^16
    tickets = msg.value / 10^17
    idx = 0
    while idx < tickets:
        players.length++
        mem[0] = 1
        players[players.length].field_0 = msg.sender or Mask(96, 160, players[players.length].field_0)
        idx = idx + 1
        continue 
    return 0
}

function getPlayers() {
    if not players.length:
        mem[(32 * players.length) + 128] = 32
        mem[(32 * players.length) + 160] = players.length
        mem[(32 * players.length) + 192 len floor32(players.length)] = mem[128 len floor32(players.length)]
        return memory
          from (32 * players.length) + 128
           len (96 * players.length) + 64
    mem[128] = address(players.field_0)
    idx = 128
    s = 0
    while (32 * players.length) + 96 > idx:
        mem[idx + 32] = players[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * players.length) + 192 len floor32(players.length)] = mem[128 len floor32(players.length)]
    return Array(len=players.length, data=mem[128 len floor32(players.length)], mem[(32 * players.length) + floor32(players.length) + 192 len (32 * players.length) - floor32(players.length)]), 
}

function pickWinner() {
    require msg.sender == address(managerAddress)
    require players.length
    mem[160] = address(players.field_0)
    idx = 160
    s = 0
    while (32 * players.length) + 160 > idx + 32:
        mem[idx + 32] = players[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require players.length
    require sha3(block.difficulty, block.timestamp, mem[160 len 32 * players.length]) % players.length < players.length
    call players[sha3(block.difficulty, block.timestamp, mem[160 len 32 * players.length]) % players.length].field_0 with:
       value 9 * eth.balance(this.address) / 10 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    players.length = 0
    idx = 0
    while players.length > idx:
        players[idx].field_0 = 0
        idx = idx + 1
        continue 
}



}
