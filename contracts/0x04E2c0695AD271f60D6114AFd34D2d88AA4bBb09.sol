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

function sub_90a28f37(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)])
        if 0 >= cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
            revert with 0, 50
        mem[mem[64] + 4] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]
        require ext_code.size(stor0)
        call stor0.adventurers_log(uint256 arg1) with:
             gas gas_remaining wei
            args cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp > mem[_9]:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)])
            mem[mem[64]] = 0xbe774a7100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[mem[64] + 68 len 32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 68] = 0
            require ext_code.size(stor1)
            call stor1.0xbe774a71 with:
                 gas gas_remaining wei
                args Array(len=cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)], data=call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    mem[64] = 128
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
                if unknown_0x84e7f498(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if block.timestamp >= cd[4]:
                        return 0
                    if cd[4] < block.timestamp:
                        revert with 0, 17
                    return (cd[4] - block.timestamp)
                require unknown_0x90a28f37(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                    require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)])
                    if 0 >= cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                        revert with 0, 50
                    mem[mem[64] + 4] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]
                    require ext_code.size(stor0)
                    call stor0.adventurers_log(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _20 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp > mem[_20]:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
                        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
                        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)])
                        mem[mem[64]] = 0xbe774a7100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
                        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + 68 len 32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
                        mem[mem[64] + (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 68] = 0
                        require ext_code.size(stor1)
                        call stor1.0xbe774a71 with:
                             gas gas_remaining wei
                            args Array(len=cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)], data=call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
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
