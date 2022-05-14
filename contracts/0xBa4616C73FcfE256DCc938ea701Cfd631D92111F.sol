contract main {




// =====================  Runtime code  =====================


#
#  - sub_a036c7b1(?)
#
address sub_0e3e3bd2Address;
uint32 stor2;
address owner;
uint256 stor2;
uint256 feeRate;

function sub_0e3e3bd2(?) {
    return sub_0e3e3bd2Address
}

function owner() {
    return address(owner)
}

function feeRate() {
    return feeRate
}

function _fallback() payable {
    revert
}

function setFeeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Invalid'
    if arg1 >= 500:
        revert with 0, 'Invalid feeRate'
    feeRate = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Invalid'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Invalid'
    if not arg1:
        call address(owner) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'TransferHelper: ETH(HT/BNB)_TRANSFER_FAILED'
    else:
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            call address(owner) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'TransferHelper: ETH(HT/BNB)_TRANSFER_FAILED'
        else:
            mem[100] = this.address
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor2)
            mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 196 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
            call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 200 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                    if not mem[ceil32(return_data.size) + 228]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function withdrawTokens(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if address(owner) != msg.sender:
        revert with 0, 'Invalid'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            _172 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            s = 0
            while s < mem[_172]:
                s = s + 32
                continue 
            if ceil32(mem[_172]) <= mem[_172]:
                call address(owner) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _172 + mem[_172] + -mem[64] + 28]
                if return_data.size:
                    _255 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_255] = return_data.size
                    mem[_255 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                mem[_172 + mem[_172] + 32] = 0
                call address(owner) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _172 + mem[_172] + -mem[64] + 28]
                if return_data.size:
                    _261 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_261] = return_data.size
                    mem[_261 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: ETH(HT/BNB)_TRANSFER_FAILED'
        else:
            if mem[(32 * idx) + 140 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                _178 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                s = 0
                while s < mem[_178]:
                    s = s + 32
                    continue 
                if ceil32(mem[_178]) <= mem[_178]:
                    call address(owner) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _178 + mem[_178] + -mem[64] + 28]
                    if return_data.size:
                        _259 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_259] = return_data.size
                        mem[_259 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[_178 + mem[_178] + 32] = 0
                    call address(owner) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _178 + mem[_178] + -mem[64] + 28]
                    if return_data.size:
                        _263 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_263] = return_data.size
                        mem[_263 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: ETH(HT/BNB)_TRANSFER_FAILED'
            else:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _173 = mem[(32 * idx) + 128]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _176 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_176))
                staticcall address(_176).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _184 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _187 = mem[_184]
                require mem[_184] == mem[_184]
                _203 = mem[64]
                mem[mem[64] + 36] = address(owner)
                mem[mem[64] + 68] = _187
                _212 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_212 + 32] = mem[_212 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _215 = mem[_212]
                s = 0
                while s < _215:
                    mem[_203 + s + 100] = mem[_212 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_215) <= _215:
                    call address(_173).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _203 + _215 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        _257 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_257] = return_data.size
                        mem[_257 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_257 + 32] == bool(mem[_257 + 32])
                            if not mem[_257 + 32]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                else:
                    mem[_203 + _215 + 100] = 0
                    call address(_173).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _203 + _215 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        _262 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_262] = return_data.size
                        mem[_262 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_262 + 32] == bool(mem[_262 + 32])
                            if not mem[_262 + 32]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
