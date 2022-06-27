contract main {




// =====================  Runtime code  =====================


const value = 8 * 10^16

const delay = 1800


mapping of uint256 stor0;

function allowedToWithdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[address(arg1)]:
        if block.timestamp < stor0[address(arg1)]:
            return 0
    return 1
}

function sub_7088183b(?) {
    require calldata.size - 4 >= 32
    call this.address with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: FTM_TRANSFER_FAILED'
}

function drip() {
    if stor0[address(msg.sender)]:
        require block.timestamp >= stor0[address(msg.sender)]
    call msg.sender with:
       value 8 * 10^16 wei
         gas 0 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp > -1801:
        revert with 0, 17
    stor0[msg.sender] = block.timestamp + 1800
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x2d291cad(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        if stor0[address(arg1)]:
            if block.timestamp < stor0[address(arg1)]:
                return 0
    else:
        if unknown_0x3fa4f245(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return 8 * 10^16
        if unknown_0x6a42b8f8(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return 1800
        if unknown_0x7088183b(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            call this.address with:
               value arg1 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'TransferHelper: FTM_TRANSFER_FAILED'
        require unknown_0x9f678cca(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        if stor0[address(msg.sender)]:
            require block.timestamp >= stor0[address(msg.sender)]
        call msg.sender with:
           value 8 * 10^16 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.timestamp > -1801:
            revert with 0, 17
        stor0[msg.sender] = block.timestamp + 1800
    return 1
}



}
