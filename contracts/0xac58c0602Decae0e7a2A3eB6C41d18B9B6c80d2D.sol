contract main {




// =====================  Runtime code  =====================


#
#  - externalFlashCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;
mapping of uint8 stor1;

function tras_er5as_3434(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function drainEth(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require owner == msg.sender
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    mem[64] = 96
    mem[0 len calldata.size] = call.data[0 len calldata.size]
    mem[3 len 8] = 33
    delegate this.address.0x0 with:
         gas gas_remaining wei
        args mem[4 len calldata.size - 4]
}

function drainToken(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function addTrader__(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function removeTrader__(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function sub_711e5fc6(?) {
    require calldata.size - 4 >= 160
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require ('cd', 68).length <= test266151307()
    mem[96] = ('cd', 68).length
    if not ('cd', 68).length:
        require 0 < ('cd', 68).length
        mem[128] = cd[4]
        idx = 0
        s = 15
        while uint8(idx) < ('cd', 100).length:
            require uint8(idx) < ('cd', 68).length
            require uint8(idx + 1) < ('cd', 68).length
            mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            staticcall address(cd[((32 * uint8(idx)) + cd[100] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[3072 len 64] = ext_call.return_data[0 len 64]
            require uint8(idx) < ('cd', 132).length
            if address(cd[((32 * uint8(idx)) + cd[68] + 36)]) < address(cd[((32 * uint8(idx + 1)) + cd[68] + 36)]):
                if uint8(s) != 15:
                    if uint8(idx) != ('cd', 100).length - 1:
                        require uint8(idx) < ('cd', 68).length
                        require uint8(idx + 1) < ('cd', 68).length
                        mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                        idx = idx + 1
                        s = s
                        continue 
                    require uint8(idx) < ('cd', 132).length
                    if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                        require uint8(idx) < ('cd', 68).length
                        require uint8(idx + 1) < ('cd', 68).length
                        mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    require uint8(idx) < ('cd', 132).length
                    if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                        if uint8(idx) != ('cd', 100).length - 1:
                            require uint8(idx) < ('cd', 68).length
                            require uint8(idx + 1) < ('cd', 68).length
                            mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                            idx = idx + 1
                            s = s
                            continue 
                        require uint8(idx) < ('cd', 132).length
                        if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                            require uint8(idx) < ('cd', 68).length
                            require uint8(idx + 1) < ('cd', 68).length
                            mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if uint8(idx) == ('cd', 100).length - 1:
                            require uint8(idx) < ('cd', 132).length
                require uint8(idx) < ('cd', 68).length
                require uint8(idx + 1) < ('cd', 68).length
                mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
            else:
                if uint8(s) != 15:
                    if uint8(idx) != ('cd', 100).length - 1:
                        require uint8(idx) < ('cd', 68).length
                        require uint8(idx + 1) < ('cd', 68).length
                        mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                        idx = idx + 1
                        s = s
                        continue 
                    require uint8(idx) < ('cd', 132).length
                    if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                        require uint8(idx) < ('cd', 68).length
                        require uint8(idx + 1) < ('cd', 68).length
                        mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    require uint8(idx) < ('cd', 132).length
                    if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                        if uint8(idx) != ('cd', 100).length - 1:
                            require uint8(idx) < ('cd', 68).length
                            require uint8(idx + 1) < ('cd', 68).length
                            mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                            idx = idx + 1
                            s = s
                            continue 
                        require uint8(idx) < ('cd', 132).length
                        if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                            require uint8(idx) < ('cd', 68).length
                            require uint8(idx + 1) < ('cd', 68).length
                            mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if uint8(idx) == ('cd', 100).length - 1:
                            require uint8(idx) < ('cd', 132).length
                require uint8(idx) < ('cd', 68).length
                require uint8(idx + 1) < ('cd', 68).length
                mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
            idx = idx + 1
            s = idx
            continue 
        require ('cd', 68).length - 1 < ('cd', 68).length
        if cd[36] > mem[(32 * ('cd', 68).length - 1) + 128]:
            return 0
        require uint8(s + 1) < ('cd', 68).length
        require uint8(s) < ('cd', 68).length
        require uint8(s + 1) < ('cd', 68).length
        if address(cd[((32 * uint8(s)) + cd[68] + 36)]) < address(cd[((32 * uint8(s + 1)) + cd[68] + 36)]):
            _212 = mem[(32 * uint8(s + 1)) + 128]
            mem[(32 * ('cd', 68).length) + 288] = uint8(s)
            mem[(32 * ('cd', 68).length) + 160] = 160
            mem[(32 * ('cd', 68).length) + 320] = ('cd', 68).length
            mem[(32 * ('cd', 68).length) + 352 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[(64 * ('cd', 68).length) + 352] = 0
            mem[(32 * ('cd', 68).length) + 192] = floor32(('cd', 68).length) + 192
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + 352] = ('cd', 100).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + 384 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + (32 * ('cd', 100).length) + 384] = 0
            mem[(32 * ('cd', 68).length) + 224] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 224
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 384] = ('cd', 132).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 416 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 132).length) + 416] = 0
            mem[(32 * ('cd', 68).length) + 256] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 256
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 416] = ('cd', 68).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448 len floor32(('cd', 68).length)] = mem[128 len floor32(('cd', 68).length)]
            require uint8(s) < ('cd', 100).length
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 452] = 0
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 484] = _212
        else:
            _213 = mem[(32 * uint8(s + 1)) + 128]
            mem[(32 * ('cd', 68).length) + 288] = uint8(s)
            mem[(32 * ('cd', 68).length) + 160] = 160
            mem[(32 * ('cd', 68).length) + 320] = ('cd', 68).length
            mem[(32 * ('cd', 68).length) + 352 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[(64 * ('cd', 68).length) + 352] = 0
            mem[(32 * ('cd', 68).length) + 192] = floor32(('cd', 68).length) + 192
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + 352] = ('cd', 100).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + 384 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + (32 * ('cd', 100).length) + 384] = 0
            mem[(32 * ('cd', 68).length) + 224] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 224
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 384] = ('cd', 132).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 416 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 132).length) + 416] = 0
            mem[(32 * ('cd', 68).length) + 256] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 256
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 416] = ('cd', 68).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448 len floor32(('cd', 68).length)] = mem[128 len floor32(('cd', 68).length)]
            require uint8(s) < ('cd', 100).length
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 452] = _213
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 484] = 0
    else:
        mem[128 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        require 0 < ('cd', 68).length
        mem[128] = cd[4]
        idx = 0
        s = 15
        while uint8(idx) < ('cd', 100).length:
            require uint8(idx) < ('cd', 68).length
            require uint8(idx + 1) < ('cd', 68).length
            mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            staticcall address(cd[((32 * uint8(idx)) + cd[100] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[3072 len 64] = ext_call.return_data[0 len 64]
            require uint8(idx) < ('cd', 132).length
            if address(cd[((32 * uint8(idx)) + cd[68] + 36)]) < address(cd[((32 * uint8(idx + 1)) + cd[68] + 36)]):
                if uint8(s) != 15:
                    if uint8(idx) != ('cd', 100).length - 1:
                        require uint8(idx) < ('cd', 68).length
                        require uint8(idx + 1) < ('cd', 68).length
                        mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                        idx = idx + 1
                        s = s
                        continue 
                    require uint8(idx) < ('cd', 132).length
                    if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                        require uint8(idx) < ('cd', 68).length
                        require uint8(idx + 1) < ('cd', 68).length
                        mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    require uint8(idx) < ('cd', 132).length
                    if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                        if uint8(idx) != ('cd', 100).length - 1:
                            require uint8(idx) < ('cd', 68).length
                            require uint8(idx + 1) < ('cd', 68).length
                            mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                            idx = idx + 1
                            s = s
                            continue 
                        require uint8(idx) < ('cd', 132).length
                        if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                            require uint8(idx) < ('cd', 68).length
                            require uint8(idx + 1) < ('cd', 68).length
                            mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if uint8(idx) == ('cd', 100).length - 1:
                            require uint8(idx) < ('cd', 132).length
                require uint8(idx) < ('cd', 68).length
                require uint8(idx + 1) < ('cd', 68).length
                mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
            else:
                if uint8(s) != 15:
                    if uint8(idx) != ('cd', 100).length - 1:
                        require uint8(idx) < ('cd', 68).length
                        require uint8(idx + 1) < ('cd', 68).length
                        mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                        idx = idx + 1
                        s = s
                        continue 
                    require uint8(idx) < ('cd', 132).length
                    if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                        require uint8(idx) < ('cd', 68).length
                        require uint8(idx + 1) < ('cd', 68).length
                        mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    require uint8(idx) < ('cd', 132).length
                    if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                        if uint8(idx) != ('cd', 100).length - 1:
                            require uint8(idx) < ('cd', 68).length
                            require uint8(idx + 1) < ('cd', 68).length
                            mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                            idx = idx + 1
                            s = s
                            continue 
                        require uint8(idx) < ('cd', 132).length
                        if uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) / 10):
                            require uint8(idx) < ('cd', 68).length
                            require uint8(idx + 1) < ('cd', 68).length
                            mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if uint8(idx) == ('cd', 100).length - 1:
                            require uint8(idx) < ('cd', 132).length
                require uint8(idx) < ('cd', 68).length
                require uint8(idx + 1) < ('cd', 68).length
                mem[(32 * uint8(idx + 1)) + 128] = (1000 * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * uint8(idx)) + 128]) - (uint8(uint8(cd[((32 * uint8(idx)) + cd[132] + 36)]) % 10) * mem[(32 * uint8(idx)) + 128])
            idx = idx + 1
            s = idx
            continue 
        require ('cd', 68).length - 1 < ('cd', 68).length
        if cd[36] > mem[(32 * ('cd', 68).length - 1) + 128]:
            return 0
        require uint8(s + 1) < ('cd', 68).length
        require uint8(s) < ('cd', 68).length
        require uint8(s + 1) < ('cd', 68).length
        if address(cd[((32 * uint8(s)) + cd[68] + 36)]) < address(cd[((32 * uint8(s + 1)) + cd[68] + 36)]):
            _214 = mem[(32 * uint8(s + 1)) + 128]
            mem[(32 * ('cd', 68).length) + 288] = uint8(s)
            mem[(32 * ('cd', 68).length) + 160] = 160
            mem[(32 * ('cd', 68).length) + 320] = ('cd', 68).length
            mem[(32 * ('cd', 68).length) + 352 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[(64 * ('cd', 68).length) + 352] = 0
            mem[(32 * ('cd', 68).length) + 192] = floor32(('cd', 68).length) + 192
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + 352] = ('cd', 100).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + 384 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + (32 * ('cd', 100).length) + 384] = 0
            mem[(32 * ('cd', 68).length) + 224] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 224
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 384] = ('cd', 132).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 416 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 132).length) + 416] = 0
            mem[(32 * ('cd', 68).length) + 256] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 256
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 416] = ('cd', 68).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448 len floor32(('cd', 68).length)] = mem[128 len floor32(('cd', 68).length)]
            require uint8(s) < ('cd', 100).length
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 452] = 0
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 484] = _214
        else:
            _215 = mem[(32 * uint8(s + 1)) + 128]
            mem[(32 * ('cd', 68).length) + 288] = uint8(s)
            mem[(32 * ('cd', 68).length) + 160] = 160
            mem[(32 * ('cd', 68).length) + 320] = ('cd', 68).length
            mem[(32 * ('cd', 68).length) + 352 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[(64 * ('cd', 68).length) + 352] = 0
            mem[(32 * ('cd', 68).length) + 192] = floor32(('cd', 68).length) + 192
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + 352] = ('cd', 100).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + 384 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + (32 * ('cd', 100).length) + 384] = 0
            mem[(32 * ('cd', 68).length) + 224] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 224
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 384] = ('cd', 132).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 416 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 132).length) + 416] = 0
            mem[(32 * ('cd', 68).length) + 256] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 256
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 416] = ('cd', 68).length
            mem[(32 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448 len floor32(('cd', 68).length)] = mem[128 len floor32(('cd', 68).length)]
            require uint8(s) < ('cd', 100).length
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 452] = _215
            mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 484] = 0
    mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 516] = this.address
    mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 548] = 128
    mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 580] = mem[(32 * ('cd', 68).length) + 128]
    mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 612 len ceil32(mem[(32 * ('cd', 68).length) + 128])] = mem[(32 * ('cd', 68).length) + 160 len ceil32(mem[(32 * ('cd', 68).length) + 128])]
    if not mem[(32 * ('cd', 68).length) + 128] % 32:
        require ext_code.size(address(cd[((32 * uint8(s)) + cd[100] + 36)]))
        call address(cd[((32 * uint8(s)) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 452 len mem[(32 * ('cd', 68).length) + 128] + (127 * ('cd', 68).length) + 160]
    else:
        mem[floor32(mem[(32 * ('cd', 68).length) + 128]) + (64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 612] = mem[floor32(mem[(32 * ('cd', 68).length) + 128]) + (64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + -(mem[(32 * ('cd', 68).length) + 128] % 32) + 644 len mem[(32 * ('cd', 68).length) + 128] % 32]
        require ext_code.size(address(cd[((32 * uint8(s)) + cd[100] + 36)]))
        call address(cd[((32 * uint8(s)) + cd[100] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 452 len floor32(mem[(32 * ('cd', 68).length) + 128]) + (127 * ('cd', 68).length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ('cd', 68).length - 1 < ('cd', 68).length
    mem[(64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448] = mem[(32 * ('cd', 68).length - 1) + 128]
    return memory
      from (64 * ('cd', 68).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 448
       len 32
}

function swapTokens(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, uint8[] arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    require arg3.length <= test266151307()
    mem[96] = arg3.length
    if not arg3.length:
        require 0 < arg3.length
        mem[128] = arg1
        idx = 0
        while idx < arg4.length:
            require idx < arg5.length
            require idx < arg4.length
            require idx < arg3.length
            require idx + 1 < arg3.length
            mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            staticcall address(cd[((32 * idx) + arg4 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[3072 len 64] = ext_call.return_data[0 len 64]
            require idx < arg3.length
            require idx + 1 < arg3.length
            if address(cd[((32 * idx) + arg3 + 36)]) < address(cd[((32 * idx + 1) + arg3 + 36)]):
                mem[(32 * idx + 1) + 128] = (1000 * mem[(32 * idx) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) * mem[(32 * idx) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * idx) + 128]) - (uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) * mem[(32 * idx) + 128])
            else:
                mem[(32 * idx + 1) + 128] = (1000 * mem[(32 * idx) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) * mem[(32 * idx) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * idx) + 128]) - (uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) * mem[(32 * idx) + 128])
            idx = idx + 1
            continue 
        require arg3.length - 1 < arg3.length
        if arg2 > mem[(32 * arg3.length - 1) + 128]:
            return 0
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[address(msg.sender)]
        require 0 < arg3.length
        require 0 < arg4.length
        mem[(32 * arg3.length) + 132] = address(cd[(arg4 + 36)])
        mem[(32 * arg3.length) + 164] = arg1
        require ext_code.size(address(cd[(arg3 + 36)]))
        call address(cd[(arg3 + 36)]).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg3.length) + 128] = arg3.length
        mem[(32 * arg3.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(64 * arg3.length) + 160] = arg4.length
        mem[(64 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
        mem[64] = (64 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224
        mem[(64 * arg3.length) + (32 * arg4.length) + 192] = arg5.length
        mem[(64 * arg3.length) + (32 * arg4.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
        mem[(64 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 0
        idx = 0
        s = 0
        while idx < arg4.length:
            require idx < mem[(64 * arg3.length) + (32 * arg4.length) + 192]
            _406 = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 224]
            require idx + 1 < mem[96]
            _414 = mem[(32 * idx + 1) + 128]
            require idx + 1 < mem[(32 * arg3.length) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            if mem[(32 * idx) + (32 * arg3.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg3.length) + 172 len 20]:
                if idx >= mem[(64 * arg3.length) + 160] - 1:
                    if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10) != 1:
                            idx = idx + 1
                            s = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10
                            continue 
                        require idx < mem[(64 * arg3.length) + 160]
                        _458 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _414
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_458))
                        call address(_458).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _414, this.address
                    else:
                        require idx < mem[(64 * arg3.length) + 160]
                        _446 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        _461 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_461 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_461 + 36] = 0
                        mem[_461 + 68] = _414
                        mem[_461 + 100] = this.address
                        mem[_461 + 132] = 128
                        mem[_461 + 164] = mem[_461]
                        s = 0
                        while s < mem[_461]:
                            mem[_461 + s + 196] = mem[_461 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_461] % 32:
                            require ext_code.size(address(_446))
                            call address(_446).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _414, address(this.address), 128, mem[_461 + 164 len mem[_461] + 32]
                        else:
                            mem[floor32(mem[_461]) + _461 + 196] = mem[floor32(mem[_461]) + _461 + -(mem[_461] % 32) + 228 len mem[_461] % 32]
                            require ext_code.size(address(_446))
                            call address(_446).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _414, address(this.address), 128, mem[_461], mem[_461 + 196 len floor32(mem[_461]) + 32]
                else:
                    require idx + 1 < mem[(64 * arg3.length) + 160]
                    _436 = mem[(32 * idx + 1) + (64 * arg3.length) + 192]
                    if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10) != 1:
                            idx = idx + 1
                            s = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10
                            continue 
                        require idx < mem[(64 * arg3.length) + 160]
                        _480 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _414
                        mem[mem[64] + 68] = address(_436)
                        require ext_code.size(address(_480))
                        call address(_480).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _414, address(_436)
                    else:
                        require idx < mem[(64 * arg3.length) + 160]
                        _457 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        _483 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_483 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_483 + 36] = 0
                        mem[_483 + 68] = _414
                        mem[_483 + 100] = address(_436)
                        mem[_483 + 132] = 128
                        mem[_483 + 164] = mem[_483]
                        s = 0
                        while s < mem[_483]:
                            mem[_483 + s + 196] = mem[_483 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_483] % 32:
                            require ext_code.size(address(_457))
                            call address(_457).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _414, address(_436), 128, mem[_483 + 164 len mem[_483] + 32]
                        else:
                            mem[floor32(mem[_483]) + _483 + 196] = mem[floor32(mem[_483]) + _483 + -(mem[_483] % 32) + 228 len mem[_483] % 32]
                            require ext_code.size(address(_457))
                            call address(_457).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _414, address(_436), 128, mem[_483], mem[_483 + 196 len floor32(mem[_483]) + 32]
            else:
                if idx >= mem[(64 * arg3.length) + 160] - 1:
                    if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10) != 1:
                            idx = idx + 1
                            s = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10
                            continue 
                        require idx < mem[(64 * arg3.length) + 160]
                        _464 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _414
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_464))
                        call address(_464).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _414, 0, this.address
                    else:
                        require idx < mem[(64 * arg3.length) + 160]
                        _449 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        _467 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_467 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_467 + 36] = _414
                        mem[_467 + 68] = 0
                        mem[_467 + 100] = this.address
                        mem[_467 + 132] = 128
                        mem[_467 + 164] = mem[_467]
                        s = 0
                        while s < mem[_467]:
                            mem[_467 + s + 196] = mem[_467 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_467] % 32:
                            require ext_code.size(address(_449))
                            call address(_449).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _414, 0, address(this.address), 128, mem[_467 + 164 len mem[_467] + 32]
                        else:
                            mem[floor32(mem[_467]) + _467 + 196] = mem[floor32(mem[_467]) + _467 + -(mem[_467] % 32) + 228 len mem[_467] % 32]
                            require ext_code.size(address(_449))
                            call address(_449).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _414, 0, address(this.address), 128, mem[_467], mem[_467 + 196 len floor32(mem[_467]) + 32]
                else:
                    require idx + 1 < mem[(64 * arg3.length) + 160]
                    _437 = mem[(32 * idx + 1) + (64 * arg3.length) + 192]
                    if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10) != 1:
                            idx = idx + 1
                            s = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10
                            continue 
                        require idx < mem[(64 * arg3.length) + 160]
                        _487 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _414
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_437)
                        require ext_code.size(address(_487))
                        call address(_487).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _414, 0, address(_437)
                    else:
                        require idx < mem[(64 * arg3.length) + 160]
                        _463 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        _490 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_490 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_490 + 36] = _414
                        mem[_490 + 68] = 0
                        mem[_490 + 100] = address(_437)
                        mem[_490 + 132] = 128
                        mem[_490 + 164] = mem[_490]
                        s = 0
                        while s < mem[_490]:
                            mem[_490 + s + 196] = mem[_490 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_490] % 32:
                            require ext_code.size(address(_463))
                            call address(_463).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _414, 0, address(_437), 128, mem[_490 + 164 len mem[_490] + 32]
                        else:
                            mem[floor32(mem[_490]) + _490 + 196] = mem[floor32(mem[_490]) + _490 + -(mem[_490] % 32) + 228 len mem[_490] % 32]
                            require ext_code.size(address(_463))
                            call address(_463).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _414, 0, address(_437), 128, mem[_490], mem[_490 + 196 len floor32(mem[_490]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = uint8(_406) / 10
            continue 
    else:
        mem[128 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
        require 0 < arg3.length
        mem[128] = arg1
        idx = 0
        while idx < arg4.length:
            require idx < arg5.length
            require idx < arg4.length
            require idx < arg3.length
            require idx + 1 < arg3.length
            mem[2816] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            staticcall address(cd[((32 * idx) + arg4 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[3072 len 64] = ext_call.return_data[0 len 64]
            require idx < arg3.length
            require idx + 1 < arg3.length
            if address(cd[((32 * idx) + arg3 + 36)]) < address(cd[((32 * idx + 1) + arg3 + 36)]):
                mem[(32 * idx + 1) + 128] = (1000 * mem[(32 * idx) + 128] * ext_call.return_data[32]) - (uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) * mem[(32 * idx) + 128] * ext_call.return_data[32]) / (1000 * ext_call.return_data[0]) + (1000 * mem[(32 * idx) + 128]) - (uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) * mem[(32 * idx) + 128])
            else:
                mem[(32 * idx + 1) + 128] = (1000 * mem[(32 * idx) + 128] * ext_call.return_data[0]) - (uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) * mem[(32 * idx) + 128] * ext_call.return_data[0]) / (1000 * ext_call.return_data[32]) + (1000 * mem[(32 * idx) + 128]) - (uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) * mem[(32 * idx) + 128])
            idx = idx + 1
            continue 
        require arg3.length - 1 < arg3.length
        if arg2 > mem[(32 * arg3.length - 1) + 128]:
            return 0
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[address(msg.sender)]
        require 0 < arg3.length
        require 0 < arg4.length
        mem[(32 * arg3.length) + 132] = address(cd[(arg4 + 36)])
        mem[(32 * arg3.length) + 164] = arg1
        require ext_code.size(address(cd[(arg3 + 36)]))
        call address(cd[(arg3 + 36)]).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg3.length) + 128] = arg3.length
        mem[(32 * arg3.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(64 * arg3.length) + 160] = arg4.length
        mem[(64 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
        mem[64] = (64 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224
        mem[(64 * arg3.length) + (32 * arg4.length) + 192] = arg5.length
        mem[(64 * arg3.length) + (32 * arg4.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
        mem[(64 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 0
        idx = 0
        s = 0
        while idx < arg4.length:
            require idx < mem[(64 * arg3.length) + (32 * arg4.length) + 192]
            _409 = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 224]
            require idx + 1 < mem[96]
            _416 = mem[(32 * idx + 1) + 128]
            require idx + 1 < mem[(32 * arg3.length) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            if mem[(32 * idx) + (32 * arg3.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg3.length) + 172 len 20]:
                if idx >= mem[(64 * arg3.length) + 160] - 1:
                    if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10) != 1:
                            idx = idx + 1
                            s = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10
                            continue 
                        require idx < mem[(64 * arg3.length) + 160]
                        _470 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _416
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_470))
                        call address(_470).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _416, this.address
                    else:
                        require idx < mem[(64 * arg3.length) + 160]
                        _452 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        _473 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_473 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_473 + 36] = 0
                        mem[_473 + 68] = _416
                        mem[_473 + 100] = this.address
                        mem[_473 + 132] = 128
                        mem[_473 + 164] = mem[_473]
                        s = 0
                        while s < mem[_473]:
                            mem[_473 + s + 196] = mem[_473 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_473] % 32:
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _416, address(this.address), 128, mem[_473 + 164 len mem[_473] + 32]
                        else:
                            mem[floor32(mem[_473]) + _473 + 196] = mem[floor32(mem[_473]) + _473 + -(mem[_473] % 32) + 228 len mem[_473] % 32]
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _416, address(this.address), 128, mem[_473], mem[_473 + 196 len floor32(mem[_473]) + 32]
                else:
                    require idx + 1 < mem[(64 * arg3.length) + 160]
                    _438 = mem[(32 * idx + 1) + (64 * arg3.length) + 192]
                    if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10) != 1:
                            idx = idx + 1
                            s = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10
                            continue 
                        require idx < mem[(64 * arg3.length) + 160]
                        _494 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _416
                        mem[mem[64] + 68] = address(_438)
                        require ext_code.size(address(_494))
                        call address(_494).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _416, address(_438)
                    else:
                        require idx < mem[(64 * arg3.length) + 160]
                        _469 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        _497 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_497 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_497 + 36] = 0
                        mem[_497 + 68] = _416
                        mem[_497 + 100] = address(_438)
                        mem[_497 + 132] = 128
                        mem[_497 + 164] = mem[_497]
                        s = 0
                        while s < mem[_497]:
                            mem[_497 + s + 196] = mem[_497 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_497] % 32:
                            require ext_code.size(address(_469))
                            call address(_469).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _416, address(_438), 128, mem[_497 + 164 len mem[_497] + 32]
                        else:
                            mem[floor32(mem[_497]) + _497 + 196] = mem[floor32(mem[_497]) + _497 + -(mem[_497] % 32) + 228 len mem[_497] % 32]
                            require ext_code.size(address(_469))
                            call address(_469).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _416, address(_438), 128, mem[_497], mem[_497 + 196 len floor32(mem[_497]) + 32]
            else:
                if idx >= mem[(64 * arg3.length) + 160] - 1:
                    if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10) != 1:
                            idx = idx + 1
                            s = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10
                            continue 
                        require idx < mem[(64 * arg3.length) + 160]
                        _476 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _416
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(_476))
                        call address(_476).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _416, 0, this.address
                    else:
                        require idx < mem[(64 * arg3.length) + 160]
                        _455 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        _479 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_479 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_479 + 36] = _416
                        mem[_479 + 68] = 0
                        mem[_479 + 100] = this.address
                        mem[_479 + 132] = 128
                        mem[_479 + 164] = mem[_479]
                        s = 0
                        while s < mem[_479]:
                            mem[_479 + s + 196] = mem[_479 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_479] % 32:
                            require ext_code.size(address(_455))
                            call address(_455).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _416, 0, address(this.address), 128, mem[_479 + 164 len mem[_479] + 32]
                        else:
                            mem[floor32(mem[_479]) + _479 + 196] = mem[floor32(mem[_479]) + _479 + -(mem[_479] % 32) + 228 len mem[_479] % 32]
                            require ext_code.size(address(_455))
                            call address(_455).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _416, 0, address(this.address), 128, mem[_479], mem[_479 + 196 len floor32(mem[_479]) + 32]
                else:
                    require idx + 1 < mem[(64 * arg3.length) + 160]
                    _439 = mem[(32 * idx + 1) + (64 * arg3.length) + 192]
                    if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10):
                        if uint8(mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10) != 1:
                            idx = idx + 1
                            s = mem[(32 * idx) + (64 * arg3.length) + (32 * arg4.length) + 255 len 1] / 10
                            continue 
                        require idx < mem[(64 * arg3.length) + 160]
                        _501 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _416
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_439)
                        require ext_code.size(address(_501))
                        call address(_501).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _416, 0, address(_439)
                    else:
                        require idx < mem[(64 * arg3.length) + 160]
                        _475 = mem[(32 * idx) + (64 * arg3.length) + 192]
                        _504 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_504 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_504 + 36] = _416
                        mem[_504 + 68] = 0
                        mem[_504 + 100] = address(_439)
                        mem[_504 + 132] = 128
                        mem[_504 + 164] = mem[_504]
                        s = 0
                        while s < mem[_504]:
                            mem[_504 + s + 196] = mem[_504 + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_504] % 32:
                            require ext_code.size(address(_475))
                            call address(_475).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _416, 0, address(_439), 128, mem[_504 + 164 len mem[_504] + 32]
                        else:
                            mem[floor32(mem[_504]) + _504 + 196] = mem[floor32(mem[_504]) + _504 + -(mem[_504] % 32) + 228 len mem[_504] % 32]
                            require ext_code.size(address(_475))
                            call address(_475).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _416, 0, address(_439), 128, mem[_504], mem[_504 + 196 len floor32(mem[_504]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = uint8(_409) / 10
            continue 
    require mem[96] - 1 < mem[96]
    mem[mem[64]] = mem[(32 * mem[96] - 1) + 128]
    return memory
      from mem[64]
       len 32
}



}
