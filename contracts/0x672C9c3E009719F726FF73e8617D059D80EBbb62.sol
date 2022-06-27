contract main {




// =====================  Runtime code  =====================


const delay = 1800

const amount = 8 * 10^16


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
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: FTM_TRANSFER_FAILED'
    if block.timestamp > -1801:
        revert with 0, 17
    stor0[msg.sender] = block.timestamp + 1800
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x2d291cad(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if stor0[address(arg1)]:
                if block.timestamp < stor0[address(arg1)]:
                    return 0
            return 1
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
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x9f678cca(?????):
                require unknown_0xaa8c217c(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return 8 * 10^16
            require not msg.value
            if stor0[address(msg.sender)]:
                require block.timestamp >= stor0[address(msg.sender)]
            call msg.sender with:
               value 8 * 10^16 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'TransferHelper: FTM_TRANSFER_FAILED'
            if block.timestamp > -1801:
                revert with 0, 17
            stor0[msg.sender] = block.timestamp + 1800
}



}
