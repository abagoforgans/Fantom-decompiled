contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function sub_84e7f498(?) {
    require calldata.size - 4 >= 32
    if block.timestamp >= arg1:
        return 0
    if arg1 < block.timestamp:
        revert with 0, 17
    return (arg1 - block.timestamp)
}

function transfer_tips() {
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ada85e6e(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if block.timestamp > arg1:
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        require ext_code.size(stor0)
        call stor0.0xbe774a71 with:
             gas gas_remaining wei
            args Array(len=arg2.length, data=call.data[arg2 + 36 len 32 * arg2.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_138ad624(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 36).length:
        if block.timestamp > cd[4]:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
            _3 = mem[64]
            mem[mem[64]] = 0xbe774a7100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[mem[64] + 68 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 68] = 0
            require ext_code.size(stor0)
            call stor0.0xbe774a71 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _3 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 64]
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
        if unknown_0x138ad624(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[36] <= test266151307()
            require cd[36] + 35 < calldata.size
            require ('cd', 36).length <= test266151307()
            require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
            idx = 0
            while idx < ('cd', 36).length:
                if block.timestamp > cd[4]:
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
                    _10 = mem[64]
                    mem[mem[64]] = 0xbe774a7100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                    require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[mem[64] + 68 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                    mem[mem[64] + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 68] = 0
                    require ext_code.size(stor0)
                    call stor0.0xbe774a71 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _10 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if unknown_0x24682755(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                call stor1 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x84e7f498(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if block.timestamp >= cd[4]:
                        return 0
                    if cd[4] < block.timestamp:
                        revert with 0, 17
                    return (cd[4] - block.timestamp)
                require unknown_0xada85e6e(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                require ('cd', 36).length <= test266151307()
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                if block.timestamp > cd[4]:
                    require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    require ext_code.size(stor0)
                    call stor0.0xbe774a71 with:
                         gas gas_remaining wei
                        args Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len 32 * ('cd', 36).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
