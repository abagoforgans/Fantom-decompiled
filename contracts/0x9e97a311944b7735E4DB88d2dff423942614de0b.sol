contract main {




// =====================  Runtime code  =====================


const sub_7fc4eda8(?) = 480


address stor0;
uint256 epochStart;
uint256 epochCounter;
uint256 EPOCH_DURATION;
mapping of uint8 stor5;
uint256 stor6;
uint256 stor7;
uint256 lastWinner;
uint8 stor9;
uint256 sub_68eaf762;
uint256 entryFee;
address stor12;
uint256 sub_3175e026;

function entryFee() {
    return entryFee
}

function epochCounter() {
    return epochCounter
}

function epochStart() {
    return epochStart
}

function sub_216beebd(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor5[arg1][arg2])
}

function sub_3175e026(?) {
    return sub_3175e026
}

function sub_68eaf762(?) {
    return sub_68eaf762
}

function EPOCH_DURATION() {
    return EPOCH_DURATION
}

function claimed() {
    return bool(stor9)
}

function getLastWinner() {
    return lastWinner
}

function getCurrentWinner() {
    return (stor7 % 64 * 3600)
}

function sub_c6e43b7d(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor12
    sub_68eaf762 = arg1
}

function setEntryFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor12
    entryFee = arg1
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor12
    stor12 = arg1
}

function setDevFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor12
    require arg1 <= 10000
    sub_3175e026 = arg1
}

function enter() payable {
    if epochStart > !EPOCH_DURATION:
        revert with 'NH{q', 17
    if block.timestamp > epochStart + EPOCH_DURATION:
        if epochStart <= !EPOCH_DURATION:
            epochStart += EPOCH_DURATION
            if 1 <= !epochCounter:
                epochCounter = 2746
                lastWinner = stor7 % 64 * 3600
                stor9 = 0
                s = 2746
                while epochStart <= !EPOCH_DURATION:
                    if block.timestamp > epochStart + EPOCH_DURATION:
                        if epochStart > !EPOCH_DURATION:
                            revert with 'NH{q', 17
                        epochStart += EPOCH_DURATION
                        if 1 > !epochCounter:
                            revert with 'NH{q', 17
                        epochCounter++
                        lastWinner = stor7 % 64 * 3600
                        stor9 = 0
                        s = epochCounter + 1
                        continue 
                    if block.timestamp <= epochStart:
                        revert with 0, 'PixoLoto: not started yet'
                    if msg.value < entryFee:
                        revert with 0, 'PixoLoto: entry fee not paid'
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < sub_68eaf762:
                        revert with 0, 'PixoLoto: not enough pixyz'
                    if stor5[msg.sender][stor3]:
                        revert with 0, 'PixoLoto: already participated'
                    stor5[msg.sender][stor3] = 1
                    stor6++
                    stor7 = sha3(stor7, stor6 + 1, msg.sender)
        revert with 'NH{q', 17
    if block.timestamp <= epochStart:
        revert with 0, 'PixoLoto: not started yet'
    if msg.value < entryFee:
        revert with 0, 'PixoLoto: entry fee not paid'
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_68eaf762:
        revert with 0, 'PixoLoto: not enough pixyz'
    if stor5[msg.sender][stor3]:
        revert with 0, 'PixoLoto: already participated'
    stor5[msg.sender][stor3] = 1
    stor6++
    stor7 = sha3(stor7, stor6 + 1, msg.sender)
}

function claim() {
    if epochStart > !EPOCH_DURATION:
        revert with 'NH{q', 17
    if block.timestamp > epochStart + EPOCH_DURATION:
        if epochStart <= !EPOCH_DURATION:
            epochStart += EPOCH_DURATION
            if 1 <= !epochCounter:
                epochCounter = 2746
                lastWinner = stor7 % 64 * 3600
                stor9 = 0
                s = 2746
                while epochStart <= !EPOCH_DURATION:
                    if block.timestamp > epochStart + EPOCH_DURATION:
                        if epochStart > !EPOCH_DURATION:
                            revert with 'NH{q', 17
                        epochStart += EPOCH_DURATION
                        if 1 > !epochCounter:
                            revert with 'NH{q', 17
                        epochCounter++
                        lastWinner = stor7 % 64 * 3600
                        stor9 = 0
                        s = epochCounter + 1
                        continue 
                    if epochCounter < 1:
                        revert with 'NH{q', 17
                    if not stor5[msg.sender][stor3 - 1]:
                        revert with 0, 'PixoLoto: did not participate'
                    require ext_code.size(stor0)
                    staticcall stor0.0x6352211e with:
                            gas gas_remaining wei
                           args lastWinner
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != msg.sender:
                        revert with 0, 'PixoLoto: not the owner'
                    if stor9:
                        revert with 0, 'PixoLoto: already claimed'
                    stor9 = 1
                    if eth.balance(this.address) and sub_3175e026 > -1 / eth.balance(this.address):
                        revert with 'NH{q', 17
                    if eth.balance(this.address) < eth.balance(this.address) * sub_3175e026 / 10000:
                        revert with 'NH{q', 17
                    call msg.sender with:
                       value eth.balance(this.address) - (eth.balance(this.address) * sub_3175e026 / 10000) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor12 with:
                       value eth.balance(this.address) * sub_3175e026 / 10000 wei
                         gas 2300 * is_zero(value) wei
        revert with 'NH{q', 17
    if epochCounter < 1:
        revert with 'NH{q', 17
    if not stor5[msg.sender][stor3 - 1]:
        revert with 0, 'PixoLoto: did not participate'
    require ext_code.size(stor0)
    staticcall stor0.0x6352211e with:
            gas gas_remaining wei
           args lastWinner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'PixoLoto: not the owner'
    if stor9:
        revert with 0, 'PixoLoto: already claimed'
    stor9 = 1
    if eth.balance(this.address) and sub_3175e026 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if eth.balance(this.address) < eth.balance(this.address) * sub_3175e026 / 10000:
        revert with 'NH{q', 17
    call msg.sender with:
       value eth.balance(this.address) - (eth.balance(this.address) * sub_3175e026 / 10000) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor12 with:
       value eth.balance(this.address) * sub_3175e026 / 10000 wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x68eaf762(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xc6e43b7d(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x68eaf762(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_68eaf762
                if unknown_0x7fc4eda8(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 480
                if unknown_0xa70b9f0c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return EPOCH_DURATION
                require unknown_0xb3ab15fb(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                require msg.sender == stor12
                stor12 = address(arg1)
            else:
                if unknown_0xe97dcb62(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0xc6e43b7d(?????):
                        require unknown_0xe834a834(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return bool(stor9)
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require msg.sender == stor12
                    sub_68eaf762 = arg1
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xe97dcb62(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xeb770d0c(?????):
                            require unknown_0xf88649a1(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return lastWinner
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require msg.sender == stor12
                        entryFee = arg1
                    else:
                        if epochStart > !EPOCH_DURATION:
                            revert with 'NH{q', 17
                        if block.timestamp > epochStart + EPOCH_DURATION:
                            if epochStart <= !EPOCH_DURATION:
                                epochStart += EPOCH_DURATION
                                if 1 <= !epochCounter:
                                    epochCounter = 2746
                                    lastWinner = stor7 % 64 * 3600
                                    stor9 = 0
                                    s = 2746
                                    while epochStart <= !EPOCH_DURATION:
                                        if block.timestamp > epochStart + EPOCH_DURATION:
                                            if epochStart > !EPOCH_DURATION:
                                                revert with 'NH{q', 17
                                            epochStart += EPOCH_DURATION
                                            if 1 > !epochCounter:
                                                revert with 'NH{q', 17
                                            epochCounter++
                                            lastWinner = stor7 % 64 * 3600
                                            stor9 = 0
                                            s = epochCounter + 1
                                            continue 
                                        if block.timestamp <= epochStart:
                                            revert with 0, 'PixoLoto: not started yet'
                                        if msg.value < entryFee:
                                            revert with 0, 'PixoLoto: entry fee not paid'
                                        require ext_code.size(stor0)
                                        staticcall stor0.0x70a08231 with:
                                                gas gas_remaining wei
                                               args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < sub_68eaf762:
                                            revert with 0, 'PixoLoto: not enough pixyz'
                                        if stor5[msg.sender][stor3]:
                                            revert with 0, 'PixoLoto: already participated'
                                        stor5[msg.sender][stor3] = 1
                                        stor6++
                                        stor7 = sha3(stor7, stor6 + 1, msg.sender)
                            revert with 'NH{q', 17
                        if block.timestamp <= epochStart:
                            revert with 0, 'PixoLoto: not started yet'
                        if msg.value < entryFee:
                            revert with 0, 'PixoLoto: entry fee not paid'
                        require ext_code.size(stor0)
                        staticcall stor0.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < sub_68eaf762:
                            revert with 0, 'PixoLoto: not enough pixyz'
                        if stor5[msg.sender][stor3]:
                            revert with 0, 'PixoLoto: already participated'
                        stor5[msg.sender][stor3] = 1
                        stor6++
                        stor7 = sha3(stor7, stor6 + 1, msg.sender)
        else:
            if unknown_0x216beebd(?????) > uint32(call.func_hash) >> 224:
                if entryFee() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return entryFee
                if unknown_0x14b19c5a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return epochCounter
                if unknown_0x15e5a1e5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return epochStart
                require unknown_0x1c75b6b2(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require msg.sender == stor12
                require arg1 <= 10000
                sub_3175e026 = arg1
            else:
                if unknown_0x216beebd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    return bool(stor5[arg1][arg2])
                if unknown_0x3175e026(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_3175e026
                if unknown_0x329bfc33(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return (stor7 % 64 * 3600)
                require unknown_0x4e71d92d(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if epochStart > !EPOCH_DURATION:
                    revert with 'NH{q', 17
                if block.timestamp > epochStart + EPOCH_DURATION:
                    if epochStart <= !EPOCH_DURATION:
                        epochStart += EPOCH_DURATION
                        if 1 <= !epochCounter:
                            epochCounter = 2746
                            lastWinner = stor7 % 64 * 3600
                            stor9 = 0
                            s = 2746
                            while epochStart <= !EPOCH_DURATION:
                                if block.timestamp > epochStart + EPOCH_DURATION:
                                    if epochStart > !EPOCH_DURATION:
                                        revert with 'NH{q', 17
                                    epochStart += EPOCH_DURATION
                                    if 1 > !epochCounter:
                                        revert with 'NH{q', 17
                                    epochCounter++
                                    lastWinner = stor7 % 64 * 3600
                                    stor9 = 0
                                    s = epochCounter + 1
                                    continue 
                                if epochCounter < 1:
                                    revert with 'NH{q', 17
                                if not stor5[msg.sender][stor3 - 1]:
                                    revert with 0, 'PixoLoto: did not participate'
                                require ext_code.size(stor0)
                                staticcall stor0.0x6352211e with:
                                        gas gas_remaining wei
                                       args lastWinner
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if ext_call.return_data[12 len 20] != msg.sender:
                                    revert with 0, 'PixoLoto: not the owner'
                                if stor9:
                                    revert with 0, 'PixoLoto: already claimed'
                                stor9 = 1
                                if eth.balance(this.address) and sub_3175e026 > -1 / eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if eth.balance(this.address) < eth.balance(this.address) * sub_3175e026 / 10000:
                                    revert with 'NH{q', 17
                                call msg.sender with:
                                   value eth.balance(this.address) - (eth.balance(this.address) * sub_3175e026 / 10000) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call stor12 with:
                                   value eth.balance(this.address) * sub_3175e026 / 10000 wei
                                     gas 2300 * is_zero(value) wei
                    revert with 'NH{q', 17
                if epochCounter < 1:
                    revert with 'NH{q', 17
                if not stor5[msg.sender][stor3 - 1]:
                    revert with 0, 'PixoLoto: did not participate'
                require ext_code.size(stor0)
                staticcall stor0.0x6352211e with:
                        gas gas_remaining wei
                       args lastWinner
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, 'PixoLoto: not the owner'
                if stor9:
                    revert with 0, 'PixoLoto: already claimed'
                stor9 = 1
                if eth.balance(this.address) and sub_3175e026 > -1 / eth.balance(this.address):
                    revert with 'NH{q', 17
                if eth.balance(this.address) < eth.balance(this.address) * sub_3175e026 / 10000:
                    revert with 'NH{q', 17
                call msg.sender with:
                   value eth.balance(this.address) - (eth.balance(this.address) * sub_3175e026 / 10000) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor12 with:
                   value eth.balance(this.address) * sub_3175e026 / 10000 wei
                     gas 2300 * is_zero(value) wei
}



}
