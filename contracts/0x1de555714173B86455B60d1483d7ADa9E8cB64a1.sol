contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function sub_84e7f498(?) {
    require calldata.size - 4 >= 32
    if block.timestamp < arg1:
        revert with 0, 17
    return (block.timestamp - arg1)
}

function transfer_tips() {
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3f45283b(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        mem[mem[64] + 4] = idx
        require ext_code.size(stor0)
        call stor0.adventurers_log(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp > mem[_9]:
            mem[mem[64]] = 0xbe774a7100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = arg1.length
            require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[mem[64] + 68 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            mem[mem[64] + (32 * arg1.length) + 68] = 0
            require ext_code.size(stor1)
            call stor1.0xbe774a71 with:
                 gas gas_remaining wei
                args Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
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
                require unknown_0x84e7f498(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                if block.timestamp < arg1:
                    revert with 0, 17
                return (block.timestamp - arg1)
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 <= test266151307()
            require arg1 + 35 < calldata.size
            require arg1.length <= test266151307()
            require arg1 + (32 * arg1.length) + 36 <= calldata.size
            idx = 0
            while idx < arg1.length:
                mem[mem[64] + 4] = idx
                require ext_code.size(stor0)
                call stor0.adventurers_log(uint256 arg1) with:
                     gas gas_remaining wei
                    args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if block.timestamp > mem[_12]:
                    mem[mem[64]] = 0xbe774a7100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = arg1.length
                    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[mem[64] + 68 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
                    mem[mem[64] + (32 * arg1.length) + 68] = 0
                    require ext_code.size(stor1)
                    call stor1.0xbe774a71 with:
                         gas gas_remaining wei
                        args Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}



}
