contract main {




// =====================  Runtime code  =====================


const sub_1b34d000(?) = 10^18


address sweeperAddress;
array of struct stor1;
uint256 frequency;
uint256 viewPrice;
uint256 sub_40c87c18;
uint256 sub_cd15cf61;
uint256 currentDraw;
uint256 ticketCounter;
uint256 sub_9cd5b0d6;
mapping of struct sub_5d269be0;
array of struct sub_df0dd0d5;
array of struct sub_b858bb65;
mapping of uint256 sub_87687952;
uint256 fee;
address treasuryAddress;
address selfAddress;
uint256 sub_59acaa8c;
mapping of uint256 sub_50a58237;
uint256 stor18;

function sub_0f17ed02(?) {
    return sub_cd15cf61
}

function sub_1e6cccf9(?) {
    return sub_59acaa8c
}

function odds() {
    return sub_40c87c18
}

function sub_40c87c18(?) {
    return sub_40c87c18
}

function sub_50a58237(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_50a58237[arg1]
}

function sub_59acaa8c(?) {
    return sub_59acaa8c
}

function sub_5d269be0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_5d269be0[arg1].field_256
}

function treasury() {
    return treasuryAddress
}

function self() {
    return selfAddress
}

function sub_7b5015c8(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_5d269be0[arg1].field_512
}

function sub_7fb95ce2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_50a58237[address(arg1)]
}

function sub_86ae228f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_df0dd0d5[arg1].field_256
}

function sub_87687952(?) {
    return sub_87687952[address(msg.sender)]
}

function ticketCounter() {
    return ticketCounter
}

function sweeper() {
    return sweeperAddress
}

function sub_9209f5b6(?) {
    return frequency
}

function currentDraw() {
    return currentDraw
}

function sub_9cd5b0d6(?) {
    return sub_9cd5b0d6
}

function price() {
    return viewPrice
}

function sub_a4b73a6d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_5d269be0[arg1].field_0
}

function sub_b858bb65(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg3 < sub_b858bb65[arg1][arg2].field_0
    return sub_b858bb65[arg1][arg2][arg3].field_0
}

function sub_c6289f25(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_5d269be0[arg1].field_768
}

function sub_cd15cf61(?) {
    return sub_cd15cf61
}

function viewPrice() {
    return viewPrice
}

function fee() {
    return fee
}

function sub_df0dd0d5(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_df0dd0d5[arg1].field_256
}

function frequency() {
    return frequency
}

function sub_ebec9362(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_87687952[arg1]
}

function _fallback() payable {
    revert
}

function sub_9ad572f5(?) {
    if block.timestamp < sub_5d269be0[stor5].field_256:
        revert with 'NH{q', 17
    return block.timestamp - sub_5d269be0[stor5].field_256 >= frequency
}

function sub_4cec4ed1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sweeperAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the sweeper can assign a replacement'
    sweeperAddress = address(arg1)
    return 1
}

function sub_e8665a0c(?) {
    if treasuryAddress != msg.sender:
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

function getPaid() {
    if stor18 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor18 = 2
    if not sub_87687952[address(msg.sender)]:
        revert with 0, 'getPaid: nothing to claim'
    sub_87687952[address(msg.sender)] = 0
    call msg.sender with:
       value sub_87687952[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor18 = 1
    return 1
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if treasuryAddress != msg.sender:
        revert with 0, 'You are not the fee recipient'
    if sub_50a58237[address(arg1)] <= 0:
        revert with 0, 'you have nothing to claim'
    sub_50a58237[address(arg1)] = 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args treasuryAddress, sub_50a58237[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sweep(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sweeperAddress != msg.sender:
        revert with 0, 'must be the sweeper'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args sweeperAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_b91c86f1(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require arg1 == arg1
    mem[64] = (32 * sub_df0dd0d5[arg1].field_0) + 128
    mem[96] = sub_df0dd0d5[arg1].field_0
    if not sub_df0dd0d5[arg1].field_0:
        mem[(32 * sub_df0dd0d5[arg1].field_0) + 128] = 32
        mem[(32 * sub_df0dd0d5[arg1].field_0) + 160] = sub_df0dd0d5[arg1].field_0
        idx = 0
        s = 128
        t = (32 * sub_df0dd0d5[arg1].field_0) + 192
        while idx < sub_df0dd0d5[arg1].field_0:
            mem[t] = mem[s + 12 len 20]
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
    s = 128
    t = mem[64] + 64
    while idx < sub_df0dd0d5[arg1].field_0:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_df0dd0d5[arg1].field_0) + -mem[64] + 192
}

function enter() payable {
    if stor18 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor18 = 2
    if viewPrice != msg.value:
        revert with 0, 'enter: invalid token amount'
    if viewPrice and fee > -1 / viewPrice:
        revert with 'NH{q', 17
    if sub_59acaa8c > -(viewPrice * fee / 10^18) - 1:
        revert with 'NH{q', 17
    sub_59acaa8c += viewPrice * fee / 10^18
    if viewPrice < viewPrice * fee / 10^18:
        revert with 'NH{q', 17
    if ticketCounter == -1:
        revert with 'NH{q', 17
    ticketCounter++
    if sub_9cd5b0d6 > -viewPrice - 1:
        revert with 'NH{q', 17
    sub_9cd5b0d6 += viewPrice
    if sub_5d269be0[stor5].field_512 > -viewPrice + (viewPrice * fee / 10^18) - 1:
        revert with 'NH{q', 17
    sub_5d269be0[stor5].field_512 = sub_5d269be0[stor5].field_512 + viewPrice - (viewPrice * fee / 10^18)
    if not sub_40c87c18:
        revert with 'NH{q', 18
    if sub_df0dd0d5[stor5][stor6][sha3(block.timestamp, block.number, stor7) % stor4].field_0 > 0:
        sub_df0dd0d5[stor5][stor6][sha3(block.timestamp, block.number, stor7) % stor4].field_0++
        sub_df0dd0d5[stor5][stor6][sha3(block.timestamp, block.number, stor7) % stor4][sub_df0dd0d5[stor5][stor6][sha3(block.timestamp, block.number, stor7) % stor4].field_0].field_0 = msg.sender
    else:
        mem[384] = msg.sender
        mem[416] = 352
        sub_df0dd0d5[stor5][stor6][sha3(block.timestamp, block.number, stor7) % stor4].field_0 = 1
        s = 0
        idx = 384
        while 416 > idx:
            sub_df0dd0d5[stor5][stor6][sha3(block.timestamp, block.number, stor7) % stor4][s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 1
        while sub_df0dd0d5[stor5][stor6][sha3(block.timestamp, block.number, stor7) % stor4].field_0 > idx:
            sub_df0dd0d5[stor5][stor6][sha3(block.timestamp, block.number, stor7) % stor4][idx].field_0 = 0
            idx = idx + 1
            continue 
        sub_df0dd0d5[stor5][stor6][sha3(block.timestamp, block.number, stor7) % stor4].field_256 = sha3(block.timestamp, block.number, ticketCounter) % sub_40c87c18
    sub_b858bb65[stor5][address(msg.sender)].field_0++
    sub_b858bb65[stor5][address(msg.sender)][sub_b858bb65[stor5][address(msg.sender)].field_0].field_0 = sha3(sub_cd15cf61, currentDraw, sha3(block.timestamp, block.number, ticketCounter) % sub_40c87c18)
    emit 0x1a68cfba: msg.sender, sha3(sub_cd15cf61, currentDraw, sha3(block.timestamp, block.number, ticketCounter) % sub_40c87c18), sub_5d269be0[stor5].field_512
    stor18 = 1
    return 1
}

function draw() {
    if stor18 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor18 = 2
    if block.timestamp < sub_5d269be0[stor5].field_256:
        revert with 'NH{q', 17
    if block.timestamp - sub_5d269be0[stor5].field_256 < frequency:
        revert with 0, 'draw: too soon to draw'
    sub_5d269be0[stor5].field_256 = block.timestamp
    if not sub_40c87c18:
        revert with 'NH{q', 18
    if sub_df0dd0d5[stor5][stor6][sha3(block.timestamp, block.number, stor7) % stor4].field_0 <= 0:
        if currentDraw == -1:
            revert with 'NH{q', 17
        currentDraw++
        emit 0xe0dbc952: 0
    else:
        if not sha3(sub_cd15cf61, currentDraw, sha3(block.timestamp, block.number, ticketCounter) % sub_40c87c18):
            if currentDraw == -1:
                revert with 'NH{q', 17
            currentDraw++
            emit 0xe0dbc952: 0, sha3(sub_cd15cf61, currentDraw, sha3(block.timestamp, block.number, ticketCounter) % sub_40c87c18)
        else:
            sub_5d269be0[stor5].field_768 = sha3(sub_cd15cf61, currentDraw, sha3(block.timestamp, block.number, ticketCounter) % sub_40c87c18)
            sub_5d269be0[stor5].field_1024 = 1
            if not sub_df0dd0d5[stor9[stor5].field_768].field_0:
                revert with 'NH{q', 18
            if sub_df0dd0d5[stor9[stor5].field_768].field_0:
                mem[384] = sub_df0dd0d5[stor9[stor5].field_768].field_0
                idx = 384
                s = 0
                while (32 * sub_df0dd0d5[stor9[stor5].field_768].field_0) + 352 > idx:
                    mem[idx + 32] = sub_df0dd0d5[stor9[stor5].field_768][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            idx = 0
            while idx < sub_df0dd0d5[stor9[stor5].field_768].field_0:
                if idx >= sub_df0dd0d5[stor9[stor5].field_768].field_0:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 396 len 20]
                mem[32] = 12
                if sub_87687952[mem[(32 * idx) + 396 len 20]] > -(sub_5d269be0[stor5].field_512 / sub_df0dd0d5[stor9[stor5].field_768].field_0) - 1:
                    revert with 'NH{q', 17
                sub_87687952[mem[(32 * idx) + 396 len 20]] += sub_5d269be0[stor5].field_512 / sub_df0dd0d5[stor9[stor5].field_768].field_0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            currentDraw = 0
            ticketCounter = 0
            if sub_cd15cf61 == -1:
                revert with 'NH{q', 17
            sub_cd15cf61++
            sub_5d269be0[stor5].field_0 = block.timestamp
            sub_5d269be0[stor5].field_256 = block.timestamp
            sub_5d269be0[stor5].field_512 = 0
            sub_5d269be0[stor5].field_768 = 0
            sub_5d269be0[stor5].field_1024 = 0
            emit newRound(sub_cd15cf61);
            emit 0xe0dbc952: 1, sha3(sub_cd15cf61, currentDraw, sha3(block.timestamp, block.number, ticketCounter) % sub_40c87c18)
    stor18 = 1
    return 1
}

function name() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function viewName() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}



}
