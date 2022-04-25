contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address stor0;
uint256 txCounter;
mapping of struct transactions;

function txCounter() {
    return txCounter
}

function transactions(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return transactions[arg1].field_0, 
           transactions[arg1].field_256,
           transactions[arg1].field_512,
           transactions[arg1].field_768,
           bool(transactions[arg1].field_1024)
}

function destroyContract() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function lockFunds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if txCounter > -2:
        revert with 'NH{q', 17
    txCounter++
    if arg1 > -block.timestamp - 1:
        revert with 'NH{q', 17
    transactions[stor1].field_0 = txCounter
    transactions[stor1].field_256 = msg.sender
    transactions[stor1].field_512 = msg.value
    transactions[stor1].field_768 = arg1 + block.timestamp
    transactions[stor1].field_1024 = 0
}

function withdrawFunds() payable {
    mem[64] = 96
    require not msg.value
    if txCounter > -2:
        revert with 'NH{q', 17
    if var45002 >= txCounter + 1:
        require var45003
        call msg.sender with:
           value var45004 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if transactions[var47001].field_256 == msg.sender:
        if not var50001:
            if var50002 == -1:
                revert with 'NH{q', 17
            if txCounter > -2:
                revert with 'NH{q', 17
            if var50002 >= txCounter:
                require var50003
                call msg.sender with:
                   value var50004 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[0] = var50002 + 1
            mem[32] = 2
            if transactions[var50002 + 1].field_256 != msg.sender:
                var50001 = transactions[var50002 + 1].field_256 == msg.sender
                var50002 = var50002 + 1
                var50003 = var50003
                var50004 = var50004
                continue 
            var49001 = transactions[var50002 + 1].field_256 == msg.sender
            var49002 = var50002 + 1
            var49003 = var50003
            var49004 = var50004
            continue 
        if transactions[var50002].field_1024:
            if var50002 == -1:
                revert with 'NH{q', 17
            if txCounter > -2:
                revert with 'NH{q', 17
            if var50002 >= txCounter:
                require var50003
                call msg.sender with:
                   value var50004 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[0] = var50002 + 1
            mem[32] = 2
            if transactions[var50002 + 1].field_256 != msg.sender:
                var50001 = transactions[var50002 + 1].field_256 == msg.sender
                var50002 = var50002 + 1
                var50003 = var50003
                var50004 = var50004
                continue 
            var49001 = transactions[var50002 + 1].field_256 == msg.sender
            var49002 = var50002 + 1
            var49003 = var50003
            var49004 = var50004
            continue 
        if var50004 > -transactions[var50002].field_512 - 1:
            revert with 'NH{q', 17
        transactions[var50002].field_1024 = 1
        if var50002 == -1:
            revert with 'NH{q', 17
        if txCounter > -2:
            revert with 'NH{q', 17
        if var50002 >= txCounter:
            call msg.sender with:
               value var50004 + transactions[var50002].field_512 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[0] = var50002 + 1
        mem[32] = 2
        if transactions[var50002 + 1].field_256 != msg.sender:
            var50001 = transactions[var50002 + 1].field_256 == msg.sender
            var50002 = var50002 + 1
            var50003 = 1
            var50004 = var50004 + transactions[var50002].field_512
            continue 
        var49001 = transactions[var50002 + 1].field_256 == msg.sender
        var49002 = var50002 + 1
        var49003 = 1
        var49004 = var50004 + transactions[var50002].field_512
        continue 
    if not var40001:
        if var40002 == -1:
            revert with 'NH{q', 17
        if txCounter > -2:
            revert with 'NH{q', 17
        if var40002 >= txCounter:
            require var47002
            call msg.sender with:
               value var47003 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if transactions[var40002].field_1024:
            if var40002 == -1:
                revert with 'NH{q', 17
            if txCounter > -2:
                revert with 'NH{q', 17
            if var40002 >= txCounter:
                require var47002
                call msg.sender with:
                   value var47003 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if var47003 > -transactions[var40002].field_512 - 1:
                revert with 'NH{q', 17
            transactions[var40002].field_1024 = 1
            if var40002 == -1:
                revert with 'NH{q', 17
            if txCounter > -2:
                revert with 'NH{q', 17
            if var40002 >= txCounter:
                call msg.sender with:
                   value var47003 + transactions[var40002].field_512 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    ('lt', ('var', 40002), ('stor', ('name', 'txCounter', 1)))
    mem[0] = var40002 + 1
    mem[32] = 2
    if transactions[var40002 + 1].field_256 != msg.sender:
        var40001 = transactions[var40002 + 1].field_256 == msg.sender
        var40002 = var40002 + 1
        continue 
    mem[0] = var40002 + 1
    mem[32] = 2
    var40001 = transactions[var40002 + 1].field_768 <= block.timestamp
    var40002 = var40002 + 1
    continue 
}



}
