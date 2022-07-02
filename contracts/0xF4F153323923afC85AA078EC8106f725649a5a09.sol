contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function sub_84e7f498(?) {
    require calldata.size - 4 >= 32
    if block.timestamp >= arg1:
        return 0
    if arg1 < block.timestamp:
        revert with 0, 17
    return (arg1 - block.timestamp)
}

function transfer_tips() {
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3f45283b(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not ('cd', 4).length:
        revert with 0, 50
    require ext_code.size(stor0)
    call stor0.adventurers_log(uint256 arg1) with:
         gas gas_remaining wei
        args ('cd', 4)[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp > ext_call.return_data[0]:
        require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        require ext_code.size(stor1)
        call stor1.0xbe774a71 with:
             gas gas_remaining wei
            args Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len 32 * ('cd', 4).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x24682755(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            call stor2 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x3f45283b(?????):
                require unknown_0x84e7f498(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                if block.timestamp >= cd[4]:
                    return 0
                if cd[4] < block.timestamp:
                    revert with 0, 17
                return (cd[4] - block.timestamp)
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            require ('cd', 4).length <= test266151307()
            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
            if not ('cd', 4).length:
                revert with 0, 50
            require ext_code.size(stor0)
            call stor0.adventurers_log(uint256 arg1) with:
                 gas gas_remaining wei
                args ('cd', 4)[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp > ext_call.return_data[0]:
                require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                require ext_code.size(stor1)
                call stor1.0xbe774a71 with:
                     gas gas_remaining wei
                    args Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len 32 * ('cd', 4).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
