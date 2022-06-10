contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function withdraw() {
    if stor1 != msg.sender:
        require msg.sender == stor2
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8ef16cd9(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = 1
    mem[64] = 160
    mem[128] = call.data[calldata.size]
    idx = 0
    while idx < ('cd', 4).length:
        if 0 >= mem[96]:
            revert with 0, 50
        mem[128] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = 0xbe774a7100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[96]
        s = 0
        t = mem[64] + 68
        u = 128
        while s < mem[96]:
            mem[t] = mem[u]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(stor0)
        call stor0.0xbe774a71 with:
             gas gas_remaining wei
            args 32, mem[mem[64] + 36 len (32 * mem[96]) + 32]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if stor1 != msg.sender:
                require msg.sender == stor2
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require unknown_0x8ef16cd9(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            require ('cd', 4).length <= test266151307()
            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
            mem[128] = 1
            mem[64] = 192
            mem[160] = call.data[calldata.size]
            idx = 0
            while idx < ('cd', 4).length:
                if 0 >= mem[128]:
                    revert with 0, 50
                mem[160] = cd[((32 * idx) + cd[4] + 36)]
                _10 = mem[64]
                mem[mem[64]] = 0xbe774a7100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _11 = mem[128]
                mem[mem[64] + 36] = mem[128]
                s = 0
                t = mem[64] + 68
                u = 160
                while s < _11:
                    mem[t] = mem[u]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _10 + (32 * _11) + -mem[64] + 64]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}



}
