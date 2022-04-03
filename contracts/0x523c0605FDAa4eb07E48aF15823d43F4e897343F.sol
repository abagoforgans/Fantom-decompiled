contract main {




// =====================  Runtime code  =====================


const sub_30bd8d69(?) = 10^18

const sub_c7006857(?) = 0


array of struct stor0;
address adminAddress;
uint256 sub_e04cac47;
uint256 viewTicketPrice;
uint256 sub_6dbeffbe;
uint256 sub_cd15cf61;
uint256 sub_f5268d37;
uint256 ticketCounter;
uint8 paused;
uint256 pauseTime;
mapping of struct sub_5d269be0;
array of struct sub_df0dd0d5;
array of struct sub_b858bb65;
mapping of uint256 sub_87687952;
uint256 fee;
address feeRecipientAddress;
address selfAddress;
uint256 sub_59acaa8c;
mapping of uint256 sub_2459c1fe;
uint256 stor19;

function pauseTime() {
    return pauseTime
}

function sub_0617bc47(?) {
    return feeRecipientAddress
}

function sub_0f17ed02(?) {
    return sub_cd15cf61
}

function ticketPrice() {
    return viewTicketPrice
}

function sub_1e6cccf9(?) {
    return sub_59acaa8c
}

function sub_2459c1fe(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2459c1fe[arg1]
}

function sub_40c87c18(?) {
    return sub_6dbeffbe
}

function feeRecipient() {
    return feeRecipientAddress
}

function sub_59acaa8c(?) {
    return sub_59acaa8c
}

function paused() {
    return bool(paused)
}

function sub_5d269be0(?) {
    require calldata.size - 4 >= 32
    return sub_5d269be0[arg1].field_256
}

function viewTicketPrice() {
    return viewTicketPrice
}

function sub_6da7b0d1(?) {
    return ticketCounter
}

function sub_6dbeffbe(?) {
    return sub_6dbeffbe
}

function self() {
    return selfAddress
}

function viewFee() {
    return fee
}

function sub_7b5015c8(?) {
    require calldata.size - 4 >= 32
    return sub_5d269be0[arg1].field_512
}

function sub_7fb95ce2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2459c1fe[address(arg1)]
}

function sub_86ae228f(?) {
    require calldata.size - 4 >= 32
    return sub_df0dd0d5[arg1].field_256
}

function sub_87687952(?) {
    return sub_87687952[address(msg.sender)]
}

function ticketCounter() {
    return ticketCounter
}

function currentDraw() {
    return sub_f5268d37
}

function sub_a4b73a6d(?) {
    require calldata.size - 4 >= 32
    return sub_5d269be0[arg1].field_0
}

function sub_a5a40544(?) {
    return sub_e04cac47
}

function sub_b858bb65(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 < sub_b858bb65[arg1][arg2].field_0
    return sub_b858bb65[arg1][arg2][arg3].field_0
}

function sub_c6289f25(?) {
    require calldata.size - 4 >= 32
    return sub_5d269be0[arg1].field_768
}

function sub_cd15cf61(?) {
    return sub_cd15cf61
}

function fee() {
    return fee
}

function sub_df0dd0d5(?) {
    require calldata.size - 4 >= 32
    return sub_df0dd0d5[arg1].field_256
}

function sub_e04cac47(?) {
    return sub_e04cac47
}

function isFinished(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(sub_5d269be0[arg1].field_1024)
}

function sub_ebec9362(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_87687952[arg1]
}

function sub_f5268d37(?) {
    return sub_f5268d37
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_9ad572f5(?) {
    if block.timestamp < sub_5d269be0[stor5].field_256:
        revert with 0, 17
    return block.timestamp - sub_5d269be0[stor5].field_256 >= sub_e04cac47
}

function changeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if feeRecipientAddress != msg.sender:
        revert with 0, 'You are not the fee recipient'
    feeRecipientAddress = arg1
    return 1
}

function sub_e8665a0c(?) {
    if feeRecipientAddress != msg.sender:
        revert with 0, 'You are not the fee recipient'
    if sub_59acaa8c <= 0:
        revert with 0, 'you have nothing to claim'
    sub_59acaa8c = 0
    call msg.sender with:
       value sub_59acaa8c wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_7b3cc73a(?) {
    require calldata.size - 4 >= 32
    if not sub_b858bb65[arg1][address(msg.sender)].field_0:
        return 0
    if sub_b858bb65[arg1][address(msg.sender)].field_0 < 1:
        revert with 0, 17
    if sub_b858bb65[arg1][address(msg.sender)].field_0 - 1 >= sub_b858bb65[arg1][address(msg.sender)].field_0:
        revert with 0, 50
    return sub_b858bb65[arg1][address(msg.sender)][sub_b858bb65[arg1][address(msg.sender)].field_0].field_0
}

function getPaid() {
    if stor19 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor19 = 2
    if not sub_87687952[address(msg.sender)]:
        revert with 0, 'you have no winnings to claim'
    sub_87687952[address(msg.sender)] = 0
    call msg.sender with:
       value sub_87687952[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor19 = 1
    return 1
}

function withdrawERC20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if feeRecipientAddress != msg.sender:
        revert with 0, 'You are not the fee recipient'
    if not sub_2459c1fe[address(arg1)]:
        revert with 0, 'you have nothing to claim'
    sub_2459c1fe[address(arg1)] = 0
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args feeRecipientAddress, sub_2459c1fe[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_b91c86f1(?) {
    require calldata.size - 4 >= 32
    if sub_b858bb65[arg1][address(msg.sender)].field_0:
        mem[128] = sub_b858bb65[arg1][address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * sub_b858bb65[arg1][address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_b858bb65[arg1][address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_b858bb65[arg1][address(msg.sender)].field_0, data=mem[128 len 32 * sub_b858bb65[arg1][address(msg.sender)].field_0]), 
    mem[(32 * sub_b858bb65[arg1][address(msg.sender)].field_0) + 128] = 32
    mem[(32 * sub_b858bb65[arg1][address(msg.sender)].field_0) + 160] = sub_b858bb65[arg1][address(msg.sender)].field_0
    mem[(32 * sub_b858bb65[arg1][address(msg.sender)].field_0) + 192 len 32 * sub_b858bb65[arg1][address(msg.sender)].field_0] = mem[128 len 32 * sub_b858bb65[arg1][address(msg.sender)].field_0]
    return memory
      from (32 * sub_b858bb65[arg1][address(msg.sender)].field_0) + 128
       len (96 * sub_b858bb65[arg1][address(msg.sender)].field_0) + 64
}

function sub_e56d71bc(?) {
    require calldata.size - 4 >= 32
    mem[64] = (32 * sub_df0dd0d5[arg1].field_0) + 128
    mem[96] = sub_df0dd0d5[arg1].field_0
    if not sub_df0dd0d5[arg1].field_0:
        mem[(32 * sub_df0dd0d5[arg1].field_0) + 128] = 32
        mem[(32 * sub_df0dd0d5[arg1].field_0) + 160] = sub_df0dd0d5[arg1].field_0
        idx = 0
        s = (32 * sub_df0dd0d5[arg1].field_0) + 192
        t = 128
        while idx < sub_df0dd0d5[arg1].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_df0dd0d5[arg1].field_0) + 128
           len (96 * sub_df0dd0d5[arg1].field_0) + 64
    mem[128] = sub_df0dd0d5[arg1].field_0
    idx = 128
    s = 0
    while (32 * sub_df0dd0d5[arg1].field_0) + 96 > idx:
        mem[idx + 32] = sub_df0dd0d5[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_df0dd0d5[arg1].field_0) + 128] = 32
    mem[(32 * sub_df0dd0d5[arg1].field_0) + 160] = sub_df0dd0d5[arg1].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_df0dd0d5[arg1].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_df0dd0d5[arg1].field_0) + -mem[64] + 192
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function viewName() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function enter() payable {
    if stor19 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor19 = 2
    if viewTicketPrice != msg.value:
        revert with 0, 'wrong amount of tokens'
    if viewTicketPrice and fee > -1 / viewTicketPrice:
        revert with 0, 17
    if sub_59acaa8c > !(viewTicketPrice * fee / 10^18):
        revert with 0, 17
    sub_59acaa8c += viewTicketPrice * fee / 10^18
    if viewTicketPrice < viewTicketPrice * fee / 10^18:
        revert with 0, 17
    if paused:
        revert with 0, 'Game is paused by administrator'
    if sub_5d269be0[stor5].field_512 > !(viewTicketPrice - (viewTicketPrice * fee / 10^18)):
        revert with 0, 17
    sub_5d269be0[stor5].field_512 = sub_5d269be0[stor5].field_512 + viewTicketPrice - (viewTicketPrice * fee / 10^18)
    if not sub_6dbeffbe:
        revert with 0, 18
    if sub_df0dd0d5[stor5][sha3(block.timestamp, block.number, stor7) % stor4].field_0:
        if 12 < sub_df0dd0d5[stor5][sha3(block.timestamp, block.number, stor7) % stor4].field_0:
            revert with 0, 'Sorry, invalid ticket number. Please try again.'
        sub_df0dd0d5[stor5][sha3(block.timestamp, block.number, stor7) % stor4].field_0++
        sub_df0dd0d5[stor5][sha3(block.timestamp, block.number, stor7) % stor4][sub_df0dd0d5[stor5][sha3(block.timestamp, block.number, stor7) % stor4].field_0].field_0 = msg.sender
        if ticketCounter == -1:
            revert with 0, 17
        ticketCounter++
        sub_b858bb65[stor5][address(msg.sender)].field_0++
        sub_b858bb65[stor5][address(msg.sender)][sub_b858bb65[stor5][address(msg.sender)].field_0].field_0 = sha3(sub_cd15cf61, sha3(block.timestamp, block.number, ticketCounter) % sub_6dbeffbe)
        if block.timestamp < sub_5d269be0[stor5].field_256:
            revert with 0, 17
        if block.timestamp - sub_5d269be0[stor5].field_256 >= sub_e04cac47:
            sub_5d269be0[stor5].field_256 = block.timestamp
            if not sub_6dbeffbe:
                revert with 0, 18
            if not sub_df0dd0d5[stor5][sha3(block.timestamp, block.number, stor7) % stor4].field_0:
                if sub_f5268d37 == -1:
                    revert with 0, 17
                sub_f5268d37++
                emit 0xe0dbc952: 0
            else:
                if not sha3(sub_cd15cf61, sha3(block.timestamp, block.number, ticketCounter) % sub_6dbeffbe):
                    if sub_f5268d37 == -1:
                        revert with 0, 17
                    sub_f5268d37++
                    emit 0xe0dbc952: 0, sha3(sub_cd15cf61, sha3(block.timestamp, block.number, ticketCounter) % sub_6dbeffbe)
                else:
                    sub_5d269be0[stor5].field_768 = sha3(sub_cd15cf61, sha3(block.timestamp, block.number, ticketCounter) % sub_6dbeffbe)
                    sub_5d269be0[stor5].field_1024 = 1
                    if not sub_df0dd0d5[stor10[stor5].field_768].field_0:
                        revert with 0, 18
                    if sub_df0dd0d5[stor10[stor5].field_768].field_0:
                        mem[576] = sub_df0dd0d5[stor10[stor5].field_768].field_0
                        idx = 576
                        s = 0
                        while (32 * sub_df0dd0d5[stor10[stor5].field_768].field_0) + 544 > idx:
                            mem[idx + 32] = sub_df0dd0d5[stor10[stor5].field_768][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    idx = 0
                    while idx < sub_df0dd0d5[stor10[stor5].field_768].field_0:
                        if idx >= sub_df0dd0d5[stor10[stor5].field_768].field_0:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 588 len 20]
                        mem[32] = 13
                        if sub_87687952[mem[(32 * idx) + 588 len 20]] > !(sub_5d269be0[stor5].field_512 / sub_df0dd0d5[stor10[stor5].field_768].field_0):
                            revert with 0, 17
                        sub_87687952[mem[(32 * idx) + 588 len 20]] += sub_5d269be0[stor5].field_512 / sub_df0dd0d5[stor10[stor5].field_768].field_0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    sub_f5268d37 = 0
                    ticketCounter = 0
                    if paused:
                        revert with 0, 'Game is paused by administrator'
                    if sub_cd15cf61 == -1:
                        revert with 0, 17
                    sub_cd15cf61++
                    sub_5d269be0[stor5].field_0 = block.timestamp
                    sub_5d269be0[stor5].field_256 = block.timestamp
                    sub_5d269be0[stor5].field_512 = 0
                    sub_5d269be0[stor5].field_768 = 0
                    sub_5d269be0[stor5].field_1024 = 0
                    emit newRound(sub_cd15cf61);
                    emit 0xe0dbc952: 1, sha3(sub_cd15cf61, sha3(block.timestamp, block.number, ticketCounter) % sub_6dbeffbe)
    else:
        mem[352] = msg.sender
        mem[384] = 320
        sub_df0dd0d5[stor5][sha3(block.timestamp, block.number, stor7) % stor4].field_0 = 1
        s = 0
        idx = 352
        while 384 > idx:
            sub_df0dd0d5[stor5][sha3(block.timestamp, block.number, stor7) % stor4][s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 1
        while sub_df0dd0d5[stor5][sha3(block.timestamp, block.number, stor7) % stor4].field_0 > idx:
            sub_df0dd0d5[stor5][sha3(block.timestamp, block.number, stor7) % stor4][idx].field_0 = 0
            idx = idx + 1
            continue 
        sub_df0dd0d5[stor5][sha3(block.timestamp, block.number, stor7) % stor4].field_256 = sha3(block.timestamp, block.number, ticketCounter) % sub_6dbeffbe
        if ticketCounter == -1:
            revert with 0, 17
        ticketCounter++
        sub_b858bb65[stor5][address(msg.sender)].field_0++
        sub_b858bb65[stor5][address(msg.sender)][sub_b858bb65[stor5][address(msg.sender)].field_0].field_0 = sha3(sub_cd15cf61, sha3(block.timestamp, block.number, ticketCounter) % sub_6dbeffbe)
        if block.timestamp < sub_5d269be0[stor5].field_256:
            revert with 0, 17
        if block.timestamp - sub_5d269be0[stor5].field_256 >= sub_e04cac47:
            sub_5d269be0[stor5].field_256 = block.timestamp
            if not sub_6dbeffbe:
                revert with 0, 18
            if not sub_df0dd0d5[stor5][sha3(block.timestamp, block.number, stor7) % stor4].field_0:
                if sub_f5268d37 == -1:
                    revert with 0, 17
                sub_f5268d37++
                emit 0xe0dbc952: 0
            else:
                if not sha3(sub_cd15cf61, sha3(block.timestamp, block.number, ticketCounter) % sub_6dbeffbe):
                    if sub_f5268d37 == -1:
                        revert with 0, 17
                    sub_f5268d37++
                    emit 0xe0dbc952: 0, sha3(sub_cd15cf61, sha3(block.timestamp, block.number, ticketCounter) % sub_6dbeffbe)
                else:
                    sub_5d269be0[stor5].field_768 = sha3(sub_cd15cf61, sha3(block.timestamp, block.number, ticketCounter) % sub_6dbeffbe)
                    sub_5d269be0[stor5].field_1024 = 1
                    if not sub_df0dd0d5[stor10[stor5].field_768].field_0:
                        revert with 0, 18
                    if sub_df0dd0d5[stor10[stor5].field_768].field_0:
                        mem[704] = sub_df0dd0d5[stor10[stor5].field_768].field_0
                        idx = 704
                        s = 0
                        while (32 * sub_df0dd0d5[stor10[stor5].field_768].field_0) + 672 > idx:
                            mem[idx + 32] = sub_df0dd0d5[stor10[stor5].field_768][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    idx = 0
                    while idx < sub_df0dd0d5[stor10[stor5].field_768].field_0:
                        if idx >= sub_df0dd0d5[stor10[stor5].field_768].field_0:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 716 len 20]
                        mem[32] = 13
                        if sub_87687952[mem[(32 * idx) + 716 len 20]] > !(sub_5d269be0[stor5].field_512 / sub_df0dd0d5[stor10[stor5].field_768].field_0):
                            revert with 0, 17
                        sub_87687952[mem[(32 * idx) + 716 len 20]] += sub_5d269be0[stor5].field_512 / sub_df0dd0d5[stor10[stor5].field_768].field_0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    sub_f5268d37 = 0
                    ticketCounter = 0
                    if paused:
                        revert with 0, 'Game is paused by administrator'
                    if sub_cd15cf61 == -1:
                        revert with 0, 17
                    sub_cd15cf61++
                    sub_5d269be0[stor5].field_0 = block.timestamp
                    sub_5d269be0[stor5].field_256 = block.timestamp
                    sub_5d269be0[stor5].field_512 = 0
                    sub_5d269be0[stor5].field_768 = 0
                    sub_5d269be0[stor5].field_1024 = 0
                    emit newRound(sub_cd15cf61);
                    emit 0xe0dbc952: 1, sha3(sub_cd15cf61, sha3(block.timestamp, block.number, ticketCounter) % sub_6dbeffbe)
    emit 0x1a68cfba: msg.sender, sha3(sub_cd15cf61, sha3(block.timestamp, block.number, ticketCounter) % sub_6dbeffbe), sub_5d269be0[stor5].field_512
    stor19 = 1
    return 1
}



}
